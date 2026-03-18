resource "airbyte_source_clickup_api" "my_source_clickupapi" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_token             = "...my_api_token..."
    include_closed_tasks  = false
  }
  definition_id = "311a7a27-3fb5-4f7e-8265-5e4afe258b66"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "d80d9ecd-ad43-45b9-b169-26b4aacea6c9"
}