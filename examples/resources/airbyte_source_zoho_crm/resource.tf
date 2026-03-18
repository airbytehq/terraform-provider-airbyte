resource "airbyte_source_zoho_crm" "my_source_zohocrm" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    client_id             = "...my_client_id..."
    client_secret         = "...my_client_secret..."
    dc_region             = "EU"
    edition               = "Free"
    environment           = "Developer"
    refresh_token         = "...my_refresh_token..."
    start_datetime        = "2000-01-01"
  }
  definition_id = "4942d392-c7b5-4271-91f9-3b4f4e51eb3e"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "f80b4296-5ba4-4f22-a9e0-b04a62eca8b6"
}