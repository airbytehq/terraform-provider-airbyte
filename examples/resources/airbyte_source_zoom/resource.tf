resource "airbyte_source_zoom" "my_source_zoom" {
  configuration = {
    account_id             = "...my_account_id..."
    authorization_endpoint = "...my_authorization_endpoint..."
    client_id              = "...my_client_id..."
    client_secret          = "...my_client_secret..."
  }
  definition_id = "34f9589f-4219-48f3-a822-b82a159ebc2b"
  name          = "Della Brekke"
  secret_id     = "...my_secret_id..."
  workspace_id  = "540fbbe2-d8a9-4d00-9002-8d11c1280d80"
}