resource "airbyte_source_zoho_crm" "my_source_zohocrm" {
  configuration = {
    client_id      = "...my_client_id..."
    client_secret  = "...my_client_secret..."
    dc_region      = "EU"
    edition        = "Enterprise"
    environment    = "Sandbox"
    refresh_token  = "...my_refresh_token..."
    start_datetime = "2000-01-01 13:00"
  }
  definition_id = "6f243316-dd2c-4a1b-893b-a4ee10def03d"
  name          = "Dr. Alice Wuckert"
  secret_id     = "...my_secret_id..."
  workspace_id  = "d688efce-4cb4-4a0c-8783-aaeb2f046b35"
}