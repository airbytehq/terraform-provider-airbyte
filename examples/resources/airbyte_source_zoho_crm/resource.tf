resource "airbyte_source_zoho_crm" "my_source_zohocrm" {
  configuration = {
    client_id      = "...my_client_id..."
    client_secret  = "...my_client_secret..."
    dc_region      = "AU"
    edition        = "Ultimate"
    environment    = "Production"
    refresh_token  = "...my_refresh_token..."
    source_type    = "zoho-crm"
    start_datetime = "2000-01-01 13:00:00"
  }
  name         = "Bradford Sauer"
  workspace_id = "c68c6065-9468-4ce3-84d8-849bf8214c33"
}