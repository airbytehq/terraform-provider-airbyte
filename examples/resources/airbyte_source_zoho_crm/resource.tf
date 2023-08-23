resource "airbyte_source_zoho_crm" "my_source_zohocrm" {
  configuration = {
    client_id      = "...my_client_id..."
    client_secret  = "...my_client_secret..."
    dc_region      = "IN"
    edition        = "Free"
    environment    = "Developer"
    refresh_token  = "...my_refresh_token..."
    source_type    = "zoho-crm"
    start_datetime = "2000-01-01T13:00+00:00"
  }
  name         = "Alice Lind"
  secret_id    = "...my_secret_id..."
  workspace_id = "c759e02f-3702-4c5c-8e2d-30ead3104fa4"
}