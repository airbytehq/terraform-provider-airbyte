resource "airbyte_source_waiteraid" "my_source_waiteraid" {
  configuration = {
    auth_hash  = "...my_auth_hash..."
    restid     = "...my_restid..."
    start_date = "YYYY-MM-DD"
  }
  definition_id = "36d80be6-c7cc-4236-b0dd-a5630be90d4f"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "5c2f976a-7572-4063-bf5c-6175f1359bc5"
}