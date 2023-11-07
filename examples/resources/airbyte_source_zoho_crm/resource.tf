resource "airbyte_source_zoho_crm" "my_source_zohocrm" {
  configuration = {
    client_id      = "...my_client_id..."
    client_secret  = "...my_client_secret..."
    dc_region      = "JP"
    edition        = "Enterprise"
    environment    = "Production"
    refresh_token  = "...my_refresh_token..."
    start_datetime = "2000-01-01"
  }
  name         = "Miss Gene Schinner"
  secret_id    = "...my_secret_id..."
  workspace_id = "93e76e9f-def5-441f-86ca-13b1e89c1488"
}