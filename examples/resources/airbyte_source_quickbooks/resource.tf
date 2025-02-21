resource "airbyte_source_quickbooks" "my_source_quickbooks" {
  configuration = {
    access_token      = "...my_access_token..."
    client_id         = "...my_client_id..."
    client_secret     = "...my_client_secret..."
    realm_id          = "...my_realm_id..."
    refresh_token     = "...my_refresh_token..."
    sandbox           = true
    start_date        = "2021-03-20T00:00:00Z"
    token_expiry_date = "2022-09-21T20:04:23.212Z"
  }
  definition_id = "c133ff2e-7e08-4e71-ae0a-17bbfa4a6a9d"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "2be97070-b111-42de-bb0f-eafb0a382554"
}