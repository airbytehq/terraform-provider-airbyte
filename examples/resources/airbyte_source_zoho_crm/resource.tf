resource "airbyte_source_zoho_crm" "my_source_zohocrm" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    client_id             = "...my_client_id..."
    client_secret         = "...my_client_secret..."
    dc_region             = "EU"
    edition               = "Professional"
    environment           = "Developer"
    refresh_token         = "...my_refresh_token..."
    start_datetime        = "2000-01-01"
  }
  definition_id = "e74e0328-b159-45d6-af04-f64ce40616cc"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "f80b4296-5ba4-4f22-a9e0-b04a62eca8b6"
}