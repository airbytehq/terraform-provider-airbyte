resource "airbyte_source_zoom" "my_source_zoom" {
  configuration = {
    account_id             = "...my_account_id..."
    authorization_endpoint = "...my_authorization_endpoint..."
    client_id              = "...my_client_id..."
    client_secret          = "...my_client_secret..."
  }
  definition_id = "7f256aa2-eed9-47a7-ac93-ce2101f692ef"
  name          = "Clayton Strosin"
  secret_id     = "...my_secret_id..."
  workspace_id  = "65047283-0aac-4e29-8d7b-3b358aff5206"
}