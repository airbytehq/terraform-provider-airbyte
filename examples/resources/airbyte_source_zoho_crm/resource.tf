resource "airbyte_source_zoho_crm" "my_source_zohocrm" {
  configuration = {
    client_id      = "...my_client_id..."
    client_secret  = "...my_client_secret..."
    dc_region      = "US"
    edition        = "Professional"
    environment    = "Developer"
    refresh_token  = "...my_refresh_token..."
    start_datetime = "2000-01-01T13:00+00:00"
  }
  definition_id = "51f0c20e-4312-4d0c-bfe3-9df03e297d6f"
  name          = "Roxanne Yundt"
  secret_id     = "...my_secret_id..."
  workspace_id  = "b34f9589-f421-498f-b282-2b82a159ebc2"
}