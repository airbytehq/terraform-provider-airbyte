resource "airbyte_source_zoho_crm" "my_source_zohocrm" {
  configuration = {
    client_id      = "...my_client_id..."
    client_secret  = "...my_client_secret..."
    dc_region      = "US"
    edition        = "Enterprise"
    environment    = "Developer"
    refresh_token  = "...my_refresh_token..."
    source_type    = "zoho-crm"
    start_datetime = "2000-01-01T13:00+00:00"
  }
  name         = "Kenneth Fisher"
  secret_id    = "...my_secret_id..."
  workspace_id = "b1710688-deeb-4ef8-97f3-dd0ccd33f11b"
}