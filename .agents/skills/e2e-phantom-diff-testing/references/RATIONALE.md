# Rationale, Known Limitations, and Troubleshooting

Supplementary reading for the `e2e-phantom-diff-testing` skill. The main
`SKILL.md` is the short driver; this file holds the "why" content that
agents rarely need inline but humans revisiting this skill will.

## Why this skill exists

The bug fixed by [#423](https://github.com/airbytehq/terraform-provider-airbyte/pull/423)
is the null-vs-empty-list phantom diff on connection streams: the Airbyte
API returns empty arrays (`primaryKey: []`, `cursorField: []`) for streams
that don't have those fields, but older provider state stores them as
`null`. The two representations produce different set element hashes, so
Terraform sees the element as "changed" every plan — a remove+add pattern
on streams that are otherwise identical.

`isEffectivelyEmpty()` in `internal/planmodifiers/setplanmodifier/` treats
null, unknown, and zero-length list/set values as semantically equivalent
when deciding whether to merge state. The unit tests in
`unique_by_name_and_namespace_test.go` cover the hash-identity case
directly and are the authoritative regression guard. This skill is the
integration-level complement — proving the fix holds end-to-end against a
real Airbyte Cloud connection.

## Why the assertions are shaped the way they are

### Why three streams

A single-element set renders any mismatch as an in-place update, not the
classic remove+add phantom diff. Customer reports of this bug consistently
involve multi-stream connections, so the skill mirrors that shape to make
sure set element hashing is actually exercised.

### Why create the connection via the REST API

The provider itself may normalize `[]` to `null` on the write path,
depending on which attribute and whether any plan modifier fires. Going
direct to `POST /connections` guarantees the API state starts with `[]` as
recorded by the Airbyte backend — the skill is testing what happens when
the state side diverges from the API side, so it needs API state to be a
known shape regardless of what the provider would have written.

### Why `jq`-patch state instead of relying on a real upgrade path

Simulating a real v1.1.2 → PR-binary upgrade requires keeping a v1.1.2
state file around and arranging for the new binary to refresh against it
without re-writing during import. That's fragile. Patching state directly
with `jq` is ugly but deterministic — it forces the exact condition the
bug requires (null on the state side, `[]` on the API side) in a single
line, and it runs the same way on anyone's machine.

### Why `-refresh=false` in step 6

A normal `terraform plan` refreshes state from the API first, which pulls
the real `[]` shape back and undoes the `jq` patch. Leaving
`-refresh=false` off in the primary assertion is the most common way to
accidentally turn the regression check into a no-op.

### Why match on the bare value `"incremental_append"` in step 8

HCL formatting pads the `=` with variable whitespace across Terraform
versions, so `sed -i 's/sync_mode = "incremental_append"/.../'` is brittle.
Matching the bare quoted value is stable.

### Why the jq path assumes a single `airbyte_connection` in state

The current scaffold imports exactly one connection, so
`.resources[].instances[].attributes.configurations.streams` is
unambiguous. If the skill is adapted to import multiple connections,
narrow the jq selector with `select(.type == "airbyte_connection")` on the
resources array.

## Known limitations

- **The v1.1.2 repro leg is inherently advisory.** The phantom diff depends
  on the exact hash produced for each set element, which in turn depends on
  SDK decoding order and how unknown/null is propagated through the plan
  modifier chain. The `jq` patch forces the state side; the plan side is
  still controlled by the pre-fix provider code and can sometimes
  renormalize the values before hashing. That is why `scripts/repro-v112.sh`
  emits a WARN rather than a FAIL when the diff does not materialize. The
  authoritative bug coverage is in `unique_by_name_and_namespace_test.go`;
  step 6 in this skill is the canonical integration-level regression check.
- **The test needs a workspace with at least one source and destination.**
  The source and destination don't need to be compatible with the
  synthesized stream names (`users`, `products`, `purchases`) because the
  connection is created with `status: "inactive"` — it never runs a sync.
  If the sandbox is brand-new, create a Faker source and a Noop/dev-null
  destination first.
- **The skill does not exercise the generated SDK on the write path.**
  Connection creation goes direct to the Airbyte REST API to bypass any
  provider-side normalization. Write-path regressions need different
  coverage.

## Troubleshooting

**Step 3 fails with HTTP 401.** Token request failed. Re-check
`AIRBYTE_CLOUD_CLIENT_ID` / `AIRBYTE_CLOUD_CLIENT_SECRET`. Make sure the
workspace is in the same Airbyte Cloud tenant as the OAuth app.

**Step 3 returns `CONNECTION_ID=null`.** The API rejected the payload.
Usually a bad `sourceId`/`destinationId` — both must belong to the same
workspace. `scripts/create-connection.sh` prints the raw API response body
before aborting, so the specific error is in the script output.

**Step 5 `jq` patch produces fewer than 2 null full_refresh streams.**
The `airbyte_connection` schema shape has changed. Adjust the jq path in
`scripts/patch-state.sh`. The current path assumes
`resources[].instances[].attributes.configurations.streams[]`.

**Step 6 reports a diff involving `namespace_*` or other non-stream
fields.** Unrelated to this fix. Investigate separately; this skill only
covers stream set element hashing.

**Step 7 (`--with-v112`) fails to install.** Registry throttling or a
network blip. Retry `terraform init -upgrade` once. If persistent, skip
the `--with-v112` leg — it is advisory.

## Related links

- PR [#423](https://github.com/airbytehq/terraform-provider-airbyte/pull/423) — the fix.
- `internal/planmodifiers/setplanmodifier/unique_by_name_and_namespace.go` — the code path under test.
- `internal/planmodifiers/setplanmodifier/unique_by_name_and_namespace_test.go` — authoritative unit-test coverage.
- `.agents/skills/general-e2e-testing/SKILL.md` — sibling skill for generic `plan → apply → drift → destroy` lifecycle against fresh state.
