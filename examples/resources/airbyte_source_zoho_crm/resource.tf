resource "airbyte_source_zoho_crm" "my_source_zohocrm" {
  configuration = {
    client_id      = "...my_client_id..."
    client_secret  = "...my_client_secret..."
    dc_region      = "JP"
    edition        = "Enterprise"
    environment    = "Sandbox"
    refresh_token  = "...my_refresh_token..."
    start_datetime = "2000-01-01T13:00:00-07:00"
  }
  definition_id = "8a9d0010-028d-411c-9280-d807cdd8eb8c"
  name          = "Marion Schmeler"
  secret_id     = "...my_secret_id..."
  workspace_id  = "10938eb2-4336-424d-8c5c-5aa0b5368b26"
}