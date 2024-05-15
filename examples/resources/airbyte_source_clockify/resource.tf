resource "airbyte_source_clockify" "my_source_clockify" {
  configuration = {
    api_key      = "...my_api_key..."
    api_url      = "...my_api_url..."
    workspace_id = "...my_workspace_id..."
  }
  definition_id = "5974a2eb-c368-40ab-b376-bce66a7c0ce2"
  name          = "Muriel O'Keefe"
  secret_id     = "...my_secret_id..."
  workspace_id  = "9aab7145-4cb2-4418-93e1-da46c4f685d2"
}