resource "airbyte_source_xero" "my_source_xero" {
  configuration = {
    authentication = {
      access_token      = "...my_access_token..."
      client_id         = "...my_client_id..."
      client_secret     = "...my_client_secret..."
      refresh_token     = "...my_refresh_token..."
      token_expiry_date = "...my_token_expiry_date..."
    }
    source_type = "xero"
    start_date  = "2022-03-01T00:00:00Z"
    tenant_id   = "...my_tenant_id..."
  }
  name         = "Roger Hudson"
  secret_id    = "...my_secret_id..."
  workspace_id = "6beb68a0-f657-4b7d-83a1-480f8de30f06"
}