resource "airbyte_source_bing_ads" "my_source_bingads" {
  configuration = {
    auth_method        = "oauth2.0"
    client_id          = "...my_client_id..."
    client_secret      = "...my_client_secret..."
    developer_token    = "...my_developer_token..."
    lookback_window    = 8
    refresh_token      = "...my_refresh_token..."
    reports_start_date = "2021-04-24"
    source_type        = "bing-ads"
    tenant_id          = "...my_tenant_id..."
  }
  name         = "Randolph Lebsack"
  secret_id    = "...my_secret_id..."
  workspace_id = "6c723ffd-a9e0-46be-a482-5c1fc0e115c8"
}