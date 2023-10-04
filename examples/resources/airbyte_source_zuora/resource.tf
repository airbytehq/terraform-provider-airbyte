resource "airbyte_source_zuora" "my_source_zuora" {
  configuration = {
    client_id       = "...my_client_id..."
    client_secret   = "...my_client_secret..."
    data_query      = "Live"
    start_date      = "...my_start_date..."
    tenant_endpoint = "EU Production"
    window_in_days  = "30"
  }
  name         = "Johnnie Carter III"
  secret_id    = "...my_secret_id..."
  workspace_id = "0113c2d3-cb5e-4aa6-8b86-a42dbbb853ec"
}