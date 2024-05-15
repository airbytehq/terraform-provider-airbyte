resource "airbyte_source_zoho_crm" "my_source_zohocrm" {
  configuration = {
    client_id      = "...my_client_id..."
    client_secret  = "...my_client_secret..."
    dc_region      = "IN"
    edition        = "Standard"
    environment    = "Production"
    refresh_token  = "...my_refresh_token..."
    start_datetime = "2000-01-01T13:00+00:00"
  }
  definition_id = "f256aa2e-ed97-4a7a-893c-e2101f692eff"
  name          = "Wilfred Walsh"
  secret_id     = "...my_secret_id..."
  workspace_id  = "50472830-aace-4290-97b3-b358aff5206e"
}