resource "airbyte_source_zoom" "my_source_zoom" {
  configuration = {
    account_id             = "...my_account_id..."
    authorization_endpoint = "...my_authorization_endpoint..."
    client_id              = "...my_client_id..."
    client_secret          = "...my_client_secret..."
  }
  definition_id = "7e57484d-e0ea-4ba6-b0f1-4e7378bf2375"
  name          = "Allison Ondricka"
  secret_id     = "...my_secret_id..."
  workspace_id  = "8f4810e2-b60f-4065-9300-56f91ac7e123"
}