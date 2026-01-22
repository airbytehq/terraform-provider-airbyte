resource "airbyte_source_clickup_api" "my_source_clickupapi" {
  configuration = {
    api_token            = "...my_api_token..."
    include_closed_tasks = false
  }
  definition_id = "7542ebd2-e9bb-4a52-af3d-2b3e20642e3c"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "d80d9ecd-ad43-45b9-b169-26b4aacea6c9"
}