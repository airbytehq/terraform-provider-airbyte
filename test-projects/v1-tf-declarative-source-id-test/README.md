# Declarative source definition ID regression test

This project reproduces the plan cascade fixed by the declarative source
definition `id` plan modifier.

The first apply creates a low-code
`airbyte_declarative_source_definition` and an `airbyte_source` whose
`definition_id` references the definition's computed `id`. The assertion script
then changes only `manifest_description` and runs a plan against the same
Terraform state. The plan must not replace the source or destroy anything.

The script also runs a detailed-exitcode plan before the manifest change and
requires exit code 0, covering ordinary post-apply drift.

The optional dev-null destination and connection are controlled by
`enable_connection`, which defaults to `false`. In the Devin Sandbox, creating
a connection for a custom declarative source has intermittently failed with an
unrelated Airbyte Cloud HTTP 500 while the DISCOVER operation exits with code
1. Set `TF_VAR_enable_connection=true` when that API path is available; the
source-level assertion remains the primary regression check.

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
The former reports `0 to destroy`; the latter reports the replacement cascade
and exits non-zero.
