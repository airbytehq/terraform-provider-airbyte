---
name: e2e-phantom-diff-testing
description: >-
  Deterministic regression test for the null-vs-empty-list phantom diff on
  connection stream sets originally fixed by
  https://github.com/airbytehq/terraform-provider-airbyte/pull/423. Runs an
  end-to-end harness that builds a candidate provider binary, creates a
  multi-stream connection via the Airbyte REST API, patches state with jq
  to force the exact null/empty shape the bug requires, and asserts
  `terraform plan` reports "No changes." Includes an optional v1.1.2 repro
  leg and an intentional-change assertion to guard against
  over-suppression.
related:
  - general-e2e-testing
---

# Phantom Diff Regression Test — Null vs Empty List on Stream Sets

Complements the generic lifecycle coverage in
[`general-e2e-testing`](../general-e2e-testing/SKILL.md). That skill
exercises `plan → apply → drift → destroy` against fresh state. This
skill specifically forces the bug's exact state shape (full_refresh
streams with `primary_key = null` and `cursor_field = null`) via `jq`,
because a fresh `terraform apply` stores the API response symmetrically —
state and plan match on the same machine, so the phantom diff is not
observable in a clean sandbox without patching state.

## When to use

- Validating a provider PR that touches
  `internal/planmodifiers/setplanmodifier/` or anything that normalizes
  stream list/set attributes.
- Reproducing a customer report of phantom remove+add diffs on
  connection streams where `primary_key` or `cursor_field` flips between
  `null` and `[]`.
- Smoke-testing a candidate provider binary before a release cut.

## What this skill does not cover

- Does not replace the unit tests at
  `internal/planmodifiers/setplanmodifier/unique_by_name_and_namespace_test.go`.
  Those cover the hash-identity case directly and must stay green
  regardless. This skill is the integration-level complement.
- Does not exercise the generated SDK on the write path — connection
  creation goes direct to the Airbyte REST API.
- Does not mutate real customer data. All writes are in the Devin
  Sandbox workspace against a throwaway connection that is destroyed on
  exit.

## Prerequisites

- Binaries on PATH: `go`, `terraform` (1.4.x or newer), `jq` (1.6 or
  newer), `curl`, `envsubst`, `sed`.
- Secrets exported as environment variables:
  - `AIRBYTE_CLOUD_CLIENT_ID`
  - `AIRBYTE_CLOUD_CLIENT_SECRET`
  - `AIRBYTE_SOURCE_ID` and `AIRBYTE_DESTINATION_ID` — any configured
    source/destination pair in the Devin Sandbox workspace. The
    connection runs `status: "inactive"`, so stream compatibility does
    not matter; Faker + Noop/dev-null is fine.
- `REPO_ROOT` — absolute path to the `terraform-provider-airbyte`
  checkout at the branch under test.

## Fast path

From the repo root:

```bash
export REPO_ROOT="$(pwd)"
./.agents/skills/e2e-phantom-diff-testing/scripts/run.sh [--with-v112] [--keep] [--verbose]
```

Flags:

| Flag | Effect |
|---|---|
| `--with-v112` | Also run the same patched state against `airbytehq/airbyte` v1.1.2 from the registry. A reproducing diff proves the harness is sensitive enough; a "No changes" result is advisory — see [`references/RATIONALE.md`](references/RATIONALE.md) (Known Limitations). |
| `--keep` | Skip cleanup on exit so the temp workspace and connection can be inspected. |
| `--verbose` | `set -x` tracing inside `run.sh`. |

A passing run prints `ALL ASSERTIONS PASSED`. Any failure exits non-zero
with the last 50 lines of the relevant plan output.

## Step-by-step mode

Each step below maps to an independently runnable script in `scripts/`.
All scripts source `scripts/_lib.sh` for `log` / `fail` /
`require_env` / `require_bin` helpers. The orchestrator `run.sh`
composes them; when debugging, invoke them directly with the right
environment exported.

1. **Work area + cleanup trap.** Handled inline by
   [`scripts/run.sh`](scripts/run.sh): creates `$WORK_DIR`, `$TF_DIR`,
   `$BIN_DIR`, installs an EXIT trap that deletes the connection and
   scrubs `$WORK_DIR`.
2. **Build the candidate provider binary.** `go build -o
   $BIN_DIR/terraform-provider-airbyte .` from `$REPO_ROOT`. Inline in
   `run.sh`.
3. **Create a multi-stream connection via the Airbyte API.**
   [`scripts/create-connection.sh`](scripts/create-connection.sh) mints
   a bearer token and POSTs a connection with explicit `cursorField:
   []` and `primaryKey: []` on full_refresh streams. Writes
   `$WORK_DIR/connection.env` (`TOKEN`, `CONNECTION_ID`). Why API and
   not `terraform apply`: see
   [`references/RATIONALE.md`](references/RATIONALE.md).
4. **Scaffold Terraform and import state.** Templates from
   [`assets/`](assets/) are materialized by `run.sh` via `envsubst`
   into `$TF_DIR/main.tf`, `.terraformrc-post-fix`,
   `.terraformrc-v112`. Then `terraform init` and `terraform import
   airbyte_connection.test $CONNECTION_ID`.
5. **Patch state with jq to force null/empty mismatch.**
   [`scripts/patch-state.sh`](scripts/patch-state.sh) saves a copy at
   `terraform.tfstate.pre-patch`, then nulls out `primary_key` and
   `cursor_field` on every full_refresh stream in state. Asserts at
   least 2 streams match the expected shape afterwards.
6. **Primary assertion — post-fix binary reports "No changes."**
   [`scripts/assert-no-changes.sh`](scripts/assert-no-changes.sh) runs
   `terraform plan -refresh=false` and greps for "No changes." The
   `-refresh=false` is required; see RATIONALE. This is the canonical
   regression assertion — if it fails, the fix is broken.
7. **(Optional, `--with-v112`) Advisory v1.1.2 repro.**
   [`scripts/repro-v112.sh`](scripts/repro-v112.sh) copies the patched
   state into a sibling dir, pins `version = "= 1.1.2"`, re-inits
   against the registry with no dev_overrides, and runs the same plan.
   A reproducing diff is ideal; "No changes" is treated as a WARN and
   logged, not a FAIL.
8. **Secondary assertion — intentional sync_mode change is detected.**
   [`scripts/assert-intentional-change.sh`](scripts/assert-intentional-change.sh)
   restores `terraform.tfstate.pre-patch`, flips `incremental_append`
   to `full_refresh_append` in `main.tf`, and asserts `Plan: 0 to add,
   1 to change, 0 to destroy`. Guards against the fix over-suppressing
   real diffs.
9. **Apply + replan.** Inline in `run.sh`: `terraform apply
   -auto-approve` then another `assert-no-changes.sh`. Catches "apply
   produced unexpected drift" bugs that a pure plan-only check would
   miss.

## Summary of assertions

A passing run produces these, in order:

1. Post-fix binary builds from the PR branch.
2. Connection is created via API with `[]` for
   `primary_key`/`cursor_field` on full_refresh streams.
3. Import succeeds and populates state.
4. `jq` patch nulls out at least 2 full_refresh streams' pk/cursor.
5. **`terraform plan` with the post-fix binary reports "No changes" on
   the patched state.** (Primary regression assertion.)
6. *(Optional)* `terraform plan` with v1.1.2 on the same state either
   shows a remove+add diff or prints an advisory WARN.
7. After flipping `sync_mode`, plan shows exactly `Plan: 0 to add, 1 to
   change, 0 to destroy`.
8. After apply, a follow-up plan reports "No changes."
9. All resources destroyed on exit.

See [`references/RATIONALE.md`](references/RATIONALE.md) for why the
assertions are shaped this way, known limitations, and troubleshooting.

## Please improve this skill

This skill is meant to evolve as the provider, the Airbyte API, and the
phantom-diff failure modes change. While executing it, if you notice
any of the following, **proactively call them out in your run report to
the user** and offer to prepare a follow-up PR:

- A script failed in a way that implies the assertion or the jq path is
  stale — for example the schema shape changed, a step that is supposed
  to be advisory is now failing hard, or a grep pattern no longer
  matches the current Terraform output format.
- A prerequisite in this SKILL.md no longer matches reality (binary
  versions, required env vars, available sandbox sources/destinations).
- A known limitation in
  [`references/RATIONALE.md`](references/RATIONALE.md) is now
  resolvable given new provider behavior, or a new limitation emerged
  that isn't documented yet.
- The orchestrator `run.sh` is missing a step that would meaningfully
  improve the regression guarantee (for example: a new assertion on
  planfile JSON, a step that catches an adjacent class of diff, a
  cross-check against
  `unique_by_name_and_namespace_test.go`).
- Any step could be made materially simpler, faster, or more
  deterministic without weakening its assertion.

**Do not open a PR without explicit approval from your user.** The ask
is to surface improvements proactively in your run report — not to go
rogue. Queue the suggestions, tell the user what you would change and
why, and wait for the green light before touching any files under
`.agents/skills/e2e-phantom-diff-testing/`.

## Related links

- [PR #423](https://github.com/airbytehq/terraform-provider-airbyte/pull/423) — the fix.
- `internal/planmodifiers/setplanmodifier/unique_by_name_and_namespace.go` — code path under test.
- `internal/planmodifiers/setplanmodifier/unique_by_name_and_namespace_test.go` — authoritative unit tests.
- [`../general-e2e-testing/SKILL.md`](../general-e2e-testing/SKILL.md) — generic `plan → apply → drift → destroy` sibling skill.
- [`references/RATIONALE.md`](references/RATIONALE.md) — "why" content, known limitations, troubleshooting.
