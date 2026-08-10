# Declarative source definition ID regression test

This project reproduces the plan cascade fixed by the declarative source
definition `id` plan modifier.

The first apply creates a low-code
`airbyte_declarative_source_definition` and an `airbyte_source` whose
`definition_id` references the definition's computed `id`. The assertion script
then changes only `manifest_description`, plans against the same Terraform
state, and applies that plan. The plan must not replace the source or
connection or destroy anything, and the apply must preserve the source ID and,
when enabled, the connection ID.

The script also runs a detailed-exitcode plan before the manifest change and
requires exit code 0, covering ordinary post-apply drift.

The dev-null destination and connection are controlled by `enable_connection`,
which defaults to `true`. The manifest contains one inline stream at the
top-level and names it in `check.stream_names`, satisfying the low-code CDK
manifest shape and producing a non-empty catalog. The stream reads the public
JSONPlaceholder `/posts` endpoint, with an inline schema for its four fields.
Its manifest version is `6.48.15`, matching the version emitted by Connector
Builder in the sandbox. The connection specification allows additional
properties because Cloud injects `__injected_declarative_manifest` into the
source configuration during DISCOVER.

## Running

The script expects the provider binary at `../../dist/terraform-provider-airbyte`
unless `PROVIDER_BINARY` is set. It uses the credentials and workspace variables
documented by the e2e-testing skill:

```bash
export TF_VAR_airbyte_client_id="$AIRBYTE_CLOUD_CLIENT_ID"
export TF_VAR_airbyte_client_secret="$AIRBYTE_CLOUD_CLIENT_SECRET"
export TF_VAR_workspace_id="$AIRBYTE_CLOUD_DEVIN_SANDBOX_WORKSPACE_ID"
./assert-repro.sh
```

`after_fix_plan_output.txt` and `before_main_plan_output.txt` are captured
manifest-change plans from the fixed provider and `origin/main`, respectively.
The fixed plan reports no replacement and `0 to destroy`; the `origin/main`
plan reports the source and connection replacement cascade.
