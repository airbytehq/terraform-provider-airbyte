resource "airbyte_source_zoho_crm" "my_source_zohocrm" {
  configuration = {
    client_id      = "...my_client_id..."
    client_secret  = "...my_client_secret..."
    dc_region      = "IN"
    edition        = "Free"
    environment    = "Production"
    refresh_token  = "...my_refresh_token..."
    start_datetime = "2000-01-01T13:00:00-07:00"
  }
  definition_id = "36ea6e2a-4934-453a-b987-b81a066eb5b6"
  name          = "Gabriel Hartmann"
  secret_id     = "...my_secret_id..."
  workspace_id  = "46aaeb18-d05d-49d9-a1d4-6fb619254e9e"
}