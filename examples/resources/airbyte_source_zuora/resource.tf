resource "airbyte_source_zuora" "my_source_zuora" {
  configuration = {
    client_id       = "...my_client_id..."
    client_secret   = "...my_client_secret..."
    data_query      = "Unlimited"
    source_type     = "zuora"
    start_date      = "...my_start_date..."
    tenant_endpoint = "EU API Sandbox"
    window_in_days  = "1"
  }
  name         = "Carroll Grant"
  secret_id    = "...my_secret_id..."
  workspace_id = "8d0358a8-2c80-48fe-a751-a2047c0449e1"
}