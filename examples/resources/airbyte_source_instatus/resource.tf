resource "airbyte_source_instatus" "my_source_instatus" {
  configuration = {
    api_key     = "...my_api_key..."
    source_type = "instatus"
  }
  name         = "Bobbie Johnston"
  secret_id    = "...my_secret_id..."
  workspace_id = "1af388ce-0361-4444-8c79-77a0ef2f5360"
}