resource "airbyte_source_zoho_crm" "my_source_zohocrm" {
  configuration = {
    client_id      = "...my_client_id..."
    client_secret  = "...my_client_secret..."
    dc_region      = "AU"
    edition        = "Professional"
    environment    = "Sandbox"
    refresh_token  = "...my_refresh_token..."
    source_type    = "zoho-crm"
    start_datetime = "2000-01-01T13:00:00-07:00"
  }
  name         = "Amber Rosenbaum"
  secret_id    = "...my_secretId..."
  workspace_id = "7f96bb0c-69e3-472d-b134-4ba9f78a5c0e"
}