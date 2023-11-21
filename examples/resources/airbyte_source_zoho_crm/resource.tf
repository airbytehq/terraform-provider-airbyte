resource "airbyte_source_zoho_crm" "my_source_zohocrm" {
  configuration = {
    client_id      = "...my_client_id..."
    client_secret  = "...my_client_secret..."
    dc_region      = "IN"
    edition        = "Ultimate"
    environment    = "Sandbox"
    refresh_token  = "...my_refresh_token..."
    start_datetime = "2000-01-01 13:00"
  }
  definition_id = "7a306443-a75b-4cf4-a2e1-378db01d76f7"
  name          = "Jody Collins"
  secret_id     = "...my_secret_id..."
  workspace_id  = "a6e51f0c-20e4-4312-90cb-fe39df03e297"
}