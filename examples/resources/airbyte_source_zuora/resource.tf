resource "airbyte_source_zuora" "my_source_zuora" {
  configuration = {
    client_id       = "...my_client_id..."
    client_secret   = "...my_client_secret..."
    data_query      = "Unlimited"
    source_type     = "zuora"
    start_date      = "...my_start_date..."
    tenant_endpoint = "EU Central Sandbox"
    window_in_days  = "60"
  }
  name         = "Christina Rice"
  secret_id    = "...my_secret_id..."
  workspace_id = "7ab0344b-1710-4688-9eeb-ef897f3dd0cc"
}