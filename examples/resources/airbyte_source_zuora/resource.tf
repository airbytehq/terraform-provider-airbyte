resource "airbyte_source_zuora" "my_source_zuora" {
  configuration = {
    client_id       = "...my_client_id..."
    client_secret   = "...my_client_secret..."
    data_query      = "Live"
    start_date      = "...my_start_date..."
    tenant_endpoint = "EU Production"
    window_in_days  = "0.5"
  }
  definition_id = "280d807c-dd8e-4b8c-b5c4-610938eb2433"
  name          = "Anne Funk"
  secret_id     = "...my_secret_id..."
  workspace_id  = "c5c5aa0b-5368-4b26-a568-aa6dc340bb15"
}