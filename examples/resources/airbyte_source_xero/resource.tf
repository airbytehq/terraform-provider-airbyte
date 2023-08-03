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
  name         = "Mr. Clark O'Hara III"
  workspace_id = "fe965b71-1d08-4cf8-8ec9-f7b99a550a65"
}