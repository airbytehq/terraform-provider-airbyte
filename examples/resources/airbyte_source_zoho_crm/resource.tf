resource "airbyte_source_zoho_crm" "my_source_zohocrm" {
  configuration = {
    client_id      = "...my_client_id..."
    client_secret  = "...my_client_secret..."
    dc_region      = "AU"
    edition        = "Enterprise"
    environment    = "Developer"
    refresh_token  = "...my_refresh_token..."
    start_datetime = "2000-01-01T13:00:00-07:00"
  }
  definition_id = "030f2320-a84c-482f-aed3-5fd471260525"
  name          = "Mr. Ron Lakin"
  secret_id     = "...my_secret_id..."
  workspace_id  = "4214e979-a978-473e-86ec-23f8936834bb"
}