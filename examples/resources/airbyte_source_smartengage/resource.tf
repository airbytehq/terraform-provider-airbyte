resource "airbyte_source_smartengage" "my_source_smartengage" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "cff9d072-4747-4a4b-b7eb-205ddb7f1b71"
  name          = "Belinda Hilll IV"
  secret_id     = "...my_secret_id..."
  workspace_id  = "e103643a-6dfd-42a6-8225-b2ac62eb10f1"
}