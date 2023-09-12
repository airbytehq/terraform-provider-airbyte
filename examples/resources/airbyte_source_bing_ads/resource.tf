resource "airbyte_source_bing_ads" "my_source_bingads" {
  configuration = {
    auth_method        = "oauth2.0"
    client_id          = "...my_client_id..."
    client_secret      = "...my_client_secret..."
    developer_token    = "...my_developer_token..."
    lookback_window    = 4
    refresh_token      = "...my_refresh_token..."
    reports_start_date = "2022-08-23"
    source_type        = "bing-ads"
    tenant_id          = "...my_tenant_id..."
  }
  name         = "Kathryn Nitzsche"
  secret_id    = "...my_secret_id..."
  workspace_id = "408f05e3-d48f-4daf-b13a-1f5fd94259c0"
}