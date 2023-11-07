resource "airbyte_source_bing_ads" "my_source_bingads" {
  configuration = {
    client_id          = "...my_client_id..."
    client_secret      = "...my_client_secret..."
    developer_token    = "...my_developer_token..."
    lookback_window    = 7
    refresh_token      = "...my_refresh_token..."
    reports_start_date = "2021-04-13"
    tenant_id          = "...my_tenant_id..."
  }
  name         = "Alfred Littel"
  secret_id    = "...my_secret_id..."
  workspace_id = "495eab20-ebb3-405f-b624-c43900725fa3"
}