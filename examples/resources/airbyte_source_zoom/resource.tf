resource "airbyte_source_zoom" "my_source_zoom" {
  configuration = {
    account_id             = "...my_account_id..."
    authorization_endpoint = "...my_authorization_endpoint..."
    client_id              = "...my_client_id..."
    client_secret          = "...my_client_secret..."
  }
  definition_id = "7c665127-64ed-4e9c-9819-ecc37ba1700b"
  name          = "Gene Gleichner"
  secret_id     = "...my_secret_id..."
  workspace_id  = "f2cd7c8f-e575-47a3-8644-3a75bcf4e2e1"
}