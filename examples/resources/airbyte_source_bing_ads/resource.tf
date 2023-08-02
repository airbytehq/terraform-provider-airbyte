resource "airbyte_source_bing_ads" "my_source_bingads" {
  configuration = {
    auth_method        = "oauth2.0"
    client_id          = "...my_client_id..."
    client_secret      = "...my_client_secret..."
    developer_token    = "...my_developer_token..."
    lookback_window    = 10
    refresh_token      = "...my_refresh_token..."
    reports_start_date = "2022-04-10"
    source_type        = "bing-ads"
    tenant_id          = "...my_tenant_id..."
  }
  name         = "Lorraine Jacobson Sr."
  secret_id    = "...my_secretId..."
  workspace_id = "f6c37a51-2624-4383-9bbc-05a23a45cefc"
}