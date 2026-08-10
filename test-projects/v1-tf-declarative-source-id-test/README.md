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
which defaults to `false`. The manifest contains one inline stream at the
top-level and names it in `check.stream_names`, satisfying the low-code CDK
manifest shape and producing a non-empty catalog. Connection creation was
also tested with `TF_VAR_enable_connection=true`, but Airbyte Cloud still
returned HTTP 500:
`The main container of the DISCOVER operation returned an exit code 1`.
The gate remains off because that failure occurs in the Cloud DISCOVER job
even with a valid manifest, rather than in Terraform planning or apply logic.

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
The former reports no replacement and `0 to destroy`; the latter reports the
source replacement cascade and exits non-zero. With the connection gate
enabled, the same Cloud DISCOVER failure occurs before the manifest-change
assertion can run.
