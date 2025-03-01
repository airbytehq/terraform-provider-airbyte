---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "airbyte_source_circleci Resource - terraform-provider-airbyte"
subcategory: ""
description: |-
  SourceCircleci Resource
---

# airbyte_source_circleci (Resource)

SourceCircleci Resource

## Example Usage

```terraform
resource "airbyte_source_circleci" "my_source_circleci" {
  configuration = {
    api_key    = "...my_api_key..."
    job_number = "...my_job_number..."
    org_id     = "...my_org_id..."
    project_id = "...my_project_id..."
    start_date = "2021-12-24T02:44:42.906Z"
    workflow_id = [
      "{ \"see\": \"documentation\" }"
    ]
  }
  definition_id = "53783c47-5321-4ea7-8d4a-f5c8e6914d08"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "bcfd7b44-f6fc-40b7-b657-769d9b08d9e7"
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

- `api_key` (String, Sensitive)
- `org_id` (String) The org ID found in `https://app.circleci.com/settings/organization/circleci/xxxxx/overview`
- `project_id` (String) Project ID found in the project settings, Visit `https://app.circleci.com/settings/project/circleci/ORG_SLUG/YYYYY`
- `start_date` (String)

Optional:

- `job_number` (String) Job Number of the workflow for `jobs` stream, Auto fetches from `workflow_jobs` stream, if not configured. Default: "2"
- `workflow_id` (List of String) Workflow ID of a project pipeline, Could be seen in the URL of pipeline build, Example `https://app.circleci.com/pipelines/circleci/55555xxxxxx/7yyyyyyyyxxxxx/2/workflows/WORKFLOW_ID`

## Import

Import is supported using the following syntax:

```shell
terraform import airbyte_source_circleci.my_airbyte_source_circleci ""
```
