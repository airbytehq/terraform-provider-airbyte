resource "airbyte_source_zoho_crm" "my_source_zohocrm" {
  configuration = {
    client_id      = "...my_client_id..."
    client_secret  = "...my_client_secret..."
    dc_region      = "US"
    edition        = "Professional"
    environment    = "Production"
    refresh_token  = "...my_refresh_token..."
    start_datetime = "2000-01-01 13:00"
  }
  definition_id = "75bcf4e2-e137-48db-81d7-6f7dd27aa6e5"
  name          = "Melba Beer"
  secret_id     = "...my_secret_id..."
  workspace_id  = "0e4312d0-cbfe-439d-b03e-297d6f5cf39b"
}