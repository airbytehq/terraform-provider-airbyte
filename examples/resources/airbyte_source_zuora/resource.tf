resource "airbyte_source_zuora" "my_source_zuora" {
  configuration = {
    client_id       = "...my_client_id..."
    client_secret   = "...my_client_secret..."
    data_query      = "Unlimited"
    source_type     = "zuora"
    start_date      = "...my_start_date..."
    tenant_endpoint = "US Performance Test"
    window_in_days  = "200"
  }
  name         = "Joan Bednar"
  secret_id    = "...my_secret_id..."
  workspace_id = "a44707bf-375b-4442-8282-1fdb2f69e592"
}