resource "airbyte_source_mailerlite" "my_source_mailerlite" {
  configuration = {
    api_token = "...my_api_token..."
  }
  definition_id = "54c309dc-0389-4510-aac8-c7daf727dc45"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "4f876df8-56d6-4c6f-aa4a-00186eb2564b"
}