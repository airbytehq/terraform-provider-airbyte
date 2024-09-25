resource "airbyte_source_zoom" "my_source_zoom" {
  configuration = {
    account_id             = "...my_account_id..."
    authorization_endpoint = "...my_authorization_endpoint..."
    client_id              = "...my_client_id..."
    client_secret          = "...my_client_secret..."
  }
  definition_id = "14db9a0e-6f1f-46fb-a229-4ac15ae0525b"
  name          = "Johnnie Braun"
  secret_id     = "...my_secret_id..."
  workspace_id  = "8032522c-1981-45ba-94d9-03614afc86e6"
}