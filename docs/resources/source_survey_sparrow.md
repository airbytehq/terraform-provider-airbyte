---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "airbyte_source_survey_sparrow Resource - terraform-provider-airbyte"
subcategory: ""
description: |-
  SourceSurveySparrow Resource
---

# airbyte_source_survey_sparrow (Resource)

SourceSurveySparrow Resource

## Example Usage

```terraform
resource "airbyte_source_survey_sparrow" "my_source_surveysparrow" {
  configuration = {
    access_token = "...my_access_token..."
    region = {
      eu_based_account = {
        # ...
      }
      global_account = {
        # ...
      }
    }
    survey_id = [
      "{ \"see\": \"documentation\" }"
    ]
  }
  definition_id = "48652e9c-9d9f-4b9a-bf9d-0a1aba720b52"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "828bf4a5-ea2e-4e51-999c-c2b98bc413dd"
}
```

<!-- schema generated by tfplugindocs -->
## Schema

### Required

- `configuration` (Attributes) (see [below for nested schema](#nestedatt--configuration))
- `name` (String) Name of the source e.g. dev-mysql-instance.
- `workspace_id` (String)

### Optional

- `definition_id` (String) The UUID of the connector definition. One of configuration.sourceType or definitionId must be provided. Requires replacement if changed.
- `secret_id` (String) Optional secretID obtained through the public API OAuth redirect flow. Requires replacement if changed.

### Read-Only

- `created_at` (Number)
- `source_id` (String)
- `source_type` (String)

<a id="nestedatt--configuration"></a>
### Nested Schema for `configuration`

Required:

- `access_token` (String, Sensitive) Your access token. See <a href="https://developers.surveysparrow.com/rest-apis#authentication">here</a>. The key is case sensitive.

Optional:

- `region` (Attributes) Is your account location is EU based? If yes, the base url to retrieve data will be different. (see [below for nested schema](#nestedatt--configuration--region))
- `survey_id` (List of String) A List of your survey ids for survey-specific stream

<a id="nestedatt--configuration--region"></a>
### Nested Schema for `configuration.region`

Optional:

- `eu_based_account` (Attributes) (see [below for nested schema](#nestedatt--configuration--region--eu_based_account))
- `global_account` (Attributes) (see [below for nested schema](#nestedatt--configuration--region--global_account))

<a id="nestedatt--configuration--region--eu_based_account"></a>
### Nested Schema for `configuration.region.eu_based_account`


<a id="nestedatt--configuration--region--global_account"></a>
### Nested Schema for `configuration.region.global_account`

## Import

Import is supported using the following syntax:

```shell
terraform import airbyte_source_survey_sparrow.my_airbyte_source_survey_sparrow ""
```
