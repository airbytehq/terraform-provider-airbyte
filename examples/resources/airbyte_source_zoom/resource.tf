resource "airbyte_source_zoom" "my_source_zoom" {
  configuration = {
    account_id             = "...my_account_id..."
    authorization_endpoint = "...my_authorization_endpoint..."
    client_id              = "...my_client_id..."
    client_secret          = "...my_client_secret..."
  }
  definition_id = "b7c1d354-0fbb-4e2d-8a9d-0010028d11c1"
  name          = "Leona Bechtelar"
  secret_id     = "...my_secret_id..."
  workspace_id  = "07cdd8eb-8c75-4c46-9093-8eb2433624d8"
}