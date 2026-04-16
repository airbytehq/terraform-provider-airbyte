# Phantom Diff Regression Test — Null vs Empty List on Stream Sets

Deterministic regression test for the null-vs-empty-list phantom diff bug
originally fixed by [#423](https://github.com/airbytehq/terraform-provider-airbyte/pull/423),
which introduced `isEffectivelyEmpty()` in the `UniqueByNameAndNamespace` set
plan modifier.

This complements the generic lifecycle test in `e2e-testing/SKILL.md`. That
skill exercises `plan → apply → drift → destroy` against a fresh state. This
skill specifically forces the bug's exact state shape (full_refresh streams
with `primary_key = null` and `cursor_field = null`) via `jq`, because a
fresh `terraform apply` stores the API response symmetrically — state and
plan match on the same machine, so the phantom diff is NOT observable in a
clean sandbox without patching state.

## When to Use

- Validating a provider PR that touches `internal/planmodifiers/setplanmodifier/`
  or anything that normalizes stream list/set attributes.
- Reproducing a customer report of `terraform plan` showing phantom remove+add
  diffs on connection streams where `primary_key` or `cursor_field` flips
  between `null` and `[]`.
- Smoke-testing a candidate provider binary before a release cut.

## What This Skill Does Not Cover

- Does NOT replace the unit tests at
  `internal/planmodifiers/setplanmodifier/unique_by_name_and_namespace_test.go`.
  Those cover the hash-identity case directly and must stay green regardless.
  This skill is the integration-level complement.
- Does NOT exercise the generated SDK on the write path — connection creation
  goes direct to the Airbyte REST API to bypass any provider-side
  normalization.
- Does NOT mutate real customer data. All writes are in the Devin Sandbox
  workspace against a throwaway connection that is destroyed at the end.

## Prerequisites

- **Secrets required** (available as Devin org secrets):
  - `AIRBYTE_CLOUD_CLIENT_ID` — OAuth client ID for Airbyte Cloud
  - `AIRBYTE_CLOUD_CLIENT_SECRET` — OAuth client secret for Airbyte Cloud
  - `AIRBYTE_CLOUD_DEVIN_SANDBOX_WORKSPACE_ID` — Devin Sandbox workspace ID
- **Binaries on PATH:** `go`, `terraform` (1.4.x+), `jq` (1.6+), `curl`.
- **A source and destination already configured in the Devin Sandbox
  workspace.** The connection is created with `status: "inactive"`, so the
  stream shape (`users`, `products`, `purchases`) does not need to be
  compatible with the actual source schema — the connection never runs a
  sync. Any Faker source + Noop/dev-null destination pair works.
- The local clone of this repo at the branch you want to test (typically a
  PR branch). The skill builds the provider binary from this checkout.

## Options

| Option | Effect |
|---|---|
| `--with-v112` | Also run the same patched state against `airbytehq/airbyte` v1.1.2 from the registry. A reproducing diff proves the harness is sensitive enough to detect the bug. A "No changes" result on v1.1.2 is treated as advisory — see Known Limitations. |
| `--keep` | Skip cleanup on exit so the temp workspace and connection can be inspected. |
| `--verbose` | Set `-x` for shell tracing and dump full plan output on failure. |

## Procedure

Work entirely inside a temp directory. Do not pollute the repo working tree
or the user's home `~/.terraform.d`.

### Step 1 — Set up the work area and cleanup trap

```bash
REPO_ROOT="$(cd /home/ubuntu/repos/terraform-provider-airbyte && pwd)"
WORK_DIR="$(mktemp -d -t e2e-phantom-diff-XXXXXX)"
BIN_DIR="$WORK_DIR/bin-post-fix"
TF_DIR="$WORK_DIR/tf"
TS="$(date +%s)"
NAME_PREFIX="e2e-phantom-diff-$TS"
mkdir -p "$BIN_DIR" "$TF_DIR"

cleanup() {
  [[ -n "${KEEP:-}" ]] && return
  [[ -f "$TF_DIR/terraform.tfstate" ]] && \
    TF_CLI_CONFIG_FILE="$TF_DIR/.terraformrc-post-fix" \
    terraform -chdir="$TF_DIR" destroy -auto-approve >/dev/null 2>&1 || true
  [[ -n "${CONNECTION_ID:-}" ]] && \
    curl -sS -X DELETE "${AIRBYTE_API_URL:-https://api.airbyte.com/v1}/connections/$CONNECTION_ID" \
      -H "Authorization: Bearer $TOKEN" >/dev/null 2>&1 || true
  rm -rf "$WORK_DIR"
}
trap cleanup EXIT
```

### Step 2 — Build the candidate (post-fix) provider binary

```bash
( cd "$REPO_ROOT" && go build -o "$BIN_DIR/terraform-provider-airbyte" . )
```

**Assertion:** `$BIN_DIR/terraform-provider-airbyte` exists and is
executable.

### Step 3 — Mint an API token and create a multi-stream connection

Request a bearer token, then `POST /connections` with a payload that
explicitly asserts the wire shape we care about: empty arrays for
`primaryKey` and `cursorField` on the full_refresh streams, populated on
incremental.

```bash
export AIRBYTE_API_URL="${AIRBYTE_API_URL:-https://api.airbyte.com/v1}"

TOKEN="$(curl -sS -X POST "$AIRBYTE_API_URL/applications/token" \
  -H "Content-Type: application/json" \
  -d "{\"client_id\":\"$AIRBYTE_CLOUD_CLIENT_ID\",\"client_secret\":\"$AIRBYTE_CLOUD_CLIENT_SECRET\",\"grant-type\":\"client_credentials\"}" \
  | jq -r .access_token)"

# Pick any configured source + destination in the sandbox workspace.
# Export AIRBYTE_SOURCE_ID and AIRBYTE_DESTINATION_ID beforehand, or look
# them up via GET /sources?workspaceIds=... and /destinations?workspaceIds=...
BODY=$(jq -n \
  --arg source      "$AIRBYTE_SOURCE_ID" \
  --arg destination "$AIRBYTE_DESTINATION_ID" \
  --arg name        "$NAME_PREFIX" \
  --arg prefix      "${NAME_PREFIX//-/_}_" \
  '{
    sourceId:      $source,
    destinationId: $destination,
    name:          $name,
    status:        "inactive",
    prefix:        $prefix,
    configurations: {
      streams: [
        { name: "users",     syncMode: "full_refresh_append",    cursorField: [], primaryKey: [] },
        { name: "products",  syncMode: "full_refresh_overwrite", cursorField: [], primaryKey: [] },
        { name: "purchases", syncMode: "incremental_append",     cursorField: ["updated_at"], primaryKey: [["id"]] }
      ]
    }
  }')

CONNECTION_ID="$(curl -sS -X POST "$AIRBYTE_API_URL/connections" \
  -H "Authorization: Bearer $TOKEN" \
  -H "Content-Type: application/json" \
  -d "$BODY" | jq -r .connectionId)"
```

**Why three streams?** A single-element set renders any mismatch as an
in-place update, not the classic remove+add phantom diff. Customers who
report this bug typically have multi-stream connections; the skill mirrors
that shape so set element hashing is genuinely exercised.

**Why create via API, not `terraform apply`?** The provider itself may
normalize `[]→null` on the write path. Going direct guarantees the API
state starts with `[]` as recorded by the Airbyte backend.

**Assertion:** `CONNECTION_ID` is non-empty and not `"null"`. If creation
fails, print the response body and abort.

### Step 4 — Scaffold the Terraform workspace

Two rc files so the post-fix (dev_override) and v1.1.2 (registry) runs
don't contaminate each other's plugin caches.

```hcl
# $TF_DIR/main.tf
terraform {
  required_providers {
    airbyte = {
      source  = "airbytehq/airbyte"
      version = "~> 1.1.0"
    }
  }
}

provider "airbyte" {
  client_id     = var.client_id
  client_secret = var.client_secret
  server_url    = "https://api.airbyte.com/v1"
}

variable "client_id" {
  type      = string
  sensitive = true
}

variable "client_secret" {
  type      = string
  sensitive = true
}

resource "airbyte_connection" "test" {
  source_id      = "<AIRBYTE_SOURCE_ID>"
  destination_id = "<AIRBYTE_DESTINATION_ID>"
  name           = "<NAME_PREFIX>"
  status         = "inactive"
  prefix         = "<NAME_PREFIX_UNDERSCORED>_"

  configurations = {
    streams = [
      { name = "users",    sync_mode = "full_refresh_append" },
      { name = "products", sync_mode = "full_refresh_overwrite" },
      {
        name         = "purchases"
        sync_mode    = "incremental_append"
        cursor_field = ["updated_at"]
        primary_key  = [["id"]]
      },
    ]
  }
}
```

```hcl
# $TF_DIR/.terraformrc-post-fix
provider_installation {
  dev_overrides { "airbytehq/airbyte" = "<BIN_DIR>" }
  direct {}
}
```

```hcl
# $TF_DIR/.terraformrc-v112
provider_installation {
  direct {}
}
```

Import the connection into state using the post-fix binary:

```bash
export TF_VAR_client_id="$AIRBYTE_CLOUD_CLIENT_ID"
export TF_VAR_client_secret="$AIRBYTE_CLOUD_CLIENT_SECRET"

TF_CLI_CONFIG_FILE="$TF_DIR/.terraformrc-post-fix" \
  terraform -chdir="$TF_DIR" import airbyte_connection.test "$CONNECTION_ID" >/dev/null
```

### Step 5 — Patch state to force the null/empty mismatch

This is the core of the skill. After import, state reflects whatever the
provider's decode produced. We override it with `jq` so the two
full_refresh streams have `primary_key = null` and `cursor_field = null` —
which is exactly the shape customers see when state was written by an
older provider version.

```bash
cp "$TF_DIR/terraform.tfstate" "$TF_DIR/terraform.tfstate.pre-patch"

jq '
  .resources[].instances[].attributes.configurations.streams |=
    ( map(
        if .sync_mode | test("^full_refresh") then
          .primary_key = null | .cursor_field = null
        else . end
      ) )
' "$TF_DIR/terraform.tfstate" > "$TF_DIR/terraform.tfstate.patched"
mv "$TF_DIR/terraform.tfstate.patched" "$TF_DIR/terraform.tfstate"
```

**Sanity assertion:** at least 2 streams in the patched state match
`sync_mode ~= ^full_refresh` AND `primary_key == null` AND
`cursor_field == null`.

```bash
PATCHED_NULL_COUNT="$(jq '
  [ .resources[].instances[].attributes.configurations.streams[]
    | select(.sync_mode | test("^full_refresh"))
    | select(.primary_key == null and .cursor_field == null) ]
  | length
' "$TF_DIR/terraform.tfstate")"
[[ "$PATCHED_NULL_COUNT" -ge 2 ]] || { echo "FAIL: jq patch did not produce expected shape"; exit 1; }
```

**Note on the jq path:** `.resources[].instances[].attributes.configurations.streams`
assumes exactly one `airbyte_connection` resource instance in state. That is
true for this skill's scaffold. If the skill is adapted to import multiple
connections, narrow the jq selector with a `select(.type == "airbyte_connection")`
filter on the resources array.

### Step 6 — Primary assertion: post-fix binary reports "No changes"

Run `terraform plan` with `-refresh=false` so the patched state survives —
refresh would pull the real API shape back and undo the patch:

```bash
TF_CLI_CONFIG_FILE="$TF_DIR/.terraformrc-post-fix" \
  terraform -chdir="$TF_DIR" plan -refresh=false -no-color \
  >"$TF_DIR/plan-post-fix.txt" 2>&1 || true

grep -q "No changes" "$TF_DIR/plan-post-fix.txt" || {
  echo "FAIL: post-fix binary reported a diff on null/empty state — fix is broken"
  tail -50 "$TF_DIR/plan-post-fix.txt"
  exit 1
}
```

**This is the canonical regression assertion.** If it fails, the fix is
broken and the PR must not merge.

### Step 7 (optional, `--with-v112`) — Pre-fix repro on v1.1.2 from the registry

Copy the state into a sibling directory, flip the version pin, init against
the registry without dev_overrides, and run the same plan.

```bash
V112_DIR="$WORK_DIR/tf-v112"
cp -r "$TF_DIR" "$V112_DIR"
rm -rf "$V112_DIR/.terraform" "$V112_DIR/.terraform.lock.hcl"
sed -i 's#version = "~> 1.1.0"#version = "= 1.1.2"#' "$V112_DIR/main.tf"

TF_CLI_CONFIG_FILE="$V112_DIR/.terraformrc-v112" \
  terraform -chdir="$V112_DIR" init -upgrade >/dev/null

TF_CLI_CONFIG_FILE="$V112_DIR/.terraformrc-v112" \
  terraform -chdir="$V112_DIR" plan -refresh=false -no-color \
  >"$V112_DIR/plan-v112.txt" 2>&1 || true
```

**Expected outcome:** the plan contains a diff (remove+add on `streams`
with `primary_key` or `cursor_field` swapping between `null` and `[]`).

**If v1.1.2 also reports "No changes":** treat as a WARN, not a FAIL. The
repro shape is sensitive to SDK decoding and modifier ordering, and can
vary across environments even with the patched state. The post-fix
assertion (Step 6) and the unit tests still stand as the authoritative
check. Flag it in the run report so the reviewer knows the v1.1.2 leg was
inconclusive.

### Step 8 — Secondary assertion: intentional changes still show

The fix must not over-suppress real diffs. Restore the un-patched state,
flip one stream's sync_mode in HCL, and assert exactly one change in the
plan.

```bash
cp "$TF_DIR/terraform.tfstate.pre-patch" "$TF_DIR/terraform.tfstate"

# flip purchases from incremental_append → full_refresh_append
sed -i 's/"incremental_append"/"full_refresh_append"/' "$TF_DIR/main.tf"

TF_CLI_CONFIG_FILE="$TF_DIR/.terraformrc-post-fix" \
  terraform -chdir="$TF_DIR" plan -no-color \
  >"$TF_DIR/plan-smoke.txt" 2>&1 || true

grep -q "Plan: 0 to add, 1 to change, 0 to destroy" "$TF_DIR/plan-smoke.txt" || {
  echo "FAIL: post-fix binary did not detect the intentional sync_mode change"
  tail -40 "$TF_DIR/plan-smoke.txt"
  exit 1
}
```

**Why match on the bare value (`"incremental_append"`) rather than
`sync_mode = "incremental_append"`?** HCL formatting pads the `=` with
variable whitespace, so the keyed form is brittle across Terraform
versions. The bare-value match is stable.

### Step 9 — Apply + replan

Apply the intentional change and assert a follow-up plan is clean. This
catches "apply produced unexpected drift" bugs that a pure plan-only check
would miss.

```bash
TF_CLI_CONFIG_FILE="$TF_DIR/.terraformrc-post-fix" \
  terraform -chdir="$TF_DIR" apply -auto-approve -no-color >/dev/null

TF_CLI_CONFIG_FILE="$TF_DIR/.terraformrc-post-fix" \
  terraform -chdir="$TF_DIR" plan -no-color \
  >"$TF_DIR/plan-post-apply.txt" 2>&1 || true

grep -q "No changes" "$TF_DIR/plan-post-apply.txt" || {
  echo "FAIL: plan after apply shows drift"
  tail -50 "$TF_DIR/plan-post-apply.txt"
  exit 1
}
```

### Step 10 — Clean up

The exit trap installed in Step 1 handles this automatically:
`terraform destroy` via the post-fix binary, followed by a
belt-and-suspenders `DELETE /connections/{id}` in case state is somehow
inconsistent. Verify in the run summary that destroy succeeded.

Do NOT skip cleanup unless the user explicitly requested `--keep`. Leftover
sandbox connections accumulate and can mask real test failures in later
runs.

## Summary of Assertions

A passing run produces all of these, in order:

1. Post-fix binary builds from the PR branch.
2. Connection is created via API with `[]` for `primary_key`/`cursor_field`
   on full_refresh streams.
3. Import succeeds and populates state.
4. `jq` patch nulls out at least 2 full_refresh streams' pk/cursor.
5. **`terraform plan` with the post-fix binary reports "No changes" on the
   patched state.** (Primary regression assertion.)
6. *(Optional)* `terraform plan` with v1.1.2 on the same state shows a
   remove+add diff, OR prints an advisory WARN that the repro didn't fire
   in this environment.
7. After flipping sync_mode, plan shows exactly
   `Plan: 0 to add, 1 to change, 0 to destroy`.
8. After apply, a follow-up plan reports "No changes".
9. All resources destroyed on exit.

## Known Limitations

- **The v1.1.2 repro is inherently flaky.** The phantom diff depends on the
  exact hash produced for each set element, which in turn depends on SDK
  decoding order and how unknown/null is propagated through the plan
  modifier chain. The `jq` patch forces the state side; the *plan* side is
  still controlled by the pre-fix provider code and can sometimes
  renormalize the values before hashing. That's why Step 7 is advisory. The
  authoritative bug coverage lives in
  `internal/planmodifiers/setplanmodifier/unique_by_name_and_namespace_test.go`.
- **The test needs a workspace with at least one source and destination.**
  The source/destination don't need to be compatible with the synthesized
  stream names (`users`, `products`, `purchases`) because the connection is
  created with `status: "inactive"` — it never runs a sync. If your Airbyte
  sandbox is brand-new, create a Faker source and a Noop/dev-null
  destination first.
- **`-refresh=false` is required for Step 6.** A normal `terraform plan`
  refreshes state from the API first, which would pull the real `[]` shape
  back and undo the jq patch. Leaving `-refresh=false` off in Step 6 is a
  common way to accidentally turn the regression check into a no-op.

## Troubleshooting

| Symptom | Likely cause | Fix |
|---|---|---|
| Step 3 fails with `401` | Token request failed | Re-check `AIRBYTE_CLOUD_CLIENT_ID` / `SECRET`, ensure the workspace is in the same Airbyte Cloud tenant as the OAuth app. |
| Step 3 returns `CONNECTION_ID=null` | API rejected the payload | Usually a bad `sourceId`/`destinationId` — they must belong to the same workspace. Print the raw response body before `jq -r`. |
| Step 5 `jq` patch produces 0 null streams | `airbyte_connection` schema shape changed | Adjust the jq path. The current path assumes `resources[].instances[].attributes.configurations.streams[]`. |
| Step 6 reports a diff involving `namespace_*` | Unrelated to this fix | Investigate separately. This skill only covers stream set element hashing. |
| Step 7 with `--with-v112` fails to install | Registry throttling or network blip | Retry `terraform init -upgrade` once. If persistent, skip the `--with-v112` leg — it is advisory. |

## Related Links

- PR [#423](https://github.com/airbytehq/terraform-provider-airbyte/pull/423) — the fix.
- `internal/planmodifiers/setplanmodifier/unique_by_name_and_namespace.go` — the code path under test.
- `internal/planmodifiers/setplanmodifier/unique_by_name_and_namespace_test.go` — the authoritative unit-test coverage.
- `.agents/skills/e2e-testing/SKILL.md` — the sibling skill that runs the generic `plan → apply → drift → destroy` lifecycle against a fresh state.
