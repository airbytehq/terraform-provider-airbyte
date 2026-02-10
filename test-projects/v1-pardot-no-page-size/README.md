# Pardot Source Test: No page_size_v5 Default

This test validates that `airbyte_source_pardot` can be deployed without
specifying `v5_page_size`, and that no default value (previously `1000`)
is sent to the API.

## Background

A customer issue reported that the pardot connector's `v5_page_size` field
had `airbyte_hidden: true` in its spec but the Terraform provider was
generating a default value of `1000` for it. This caused the API to receive
an unexpected parameter, leading to errors.

The fix (commit `fe60d576`) strips default values from `airbyte_hidden`
fields during spec generation, and the regenerated SDK (commit `8c48349f`)
reflects this by making `v5_page_size` fully optional with no default.

## How to Test

```bash
TF_CLI_CONFIG_FILE=../../.terraformrc terraform plan
```

**Expected output**: The plan should show the pardot source configuration
WITHOUT any `v5_page_size` field. Previously, it would have shown
`v5_page_size = 1000` as a computed default.

## Verification

In the plan output, the `configuration` block should contain only:
- `client_id`
- `client_secret`
- `is_sandbox`
- `pardot_business_unit_id`
- `refresh_token`
- `start_date`

The `v5_page_size` field should NOT appear at all.
