resource "airbyte_source_zuora" "my_source_zuora" {
  configuration = {
    client_id       = "...my_client_id..."
    client_secret   = "...my_client_secret..."
    data_query      = "Live"
    source_type     = "zuora"
    start_date      = "...my_start_date..."
    tenant_endpoint = "US Cloud Production"
    window_in_days  = "364"
  }
  name         = "Mathew Cole DVM"
  workspace_id = "b0c58d27-b519-496b-9b4b-50eef712b7a7"
}