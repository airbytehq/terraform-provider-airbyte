resource "airbyte_source_smartengage" "my_source_smartengage" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "e2f3a674-4848-4ac2-b04b-eae9e1753040"
  name          = "Lorraine Zieme"
  secret_id     = "...my_secret_id..."
  workspace_id  = "6723901f-87c9-4df1-af8f-5013d5d0cf40"
}