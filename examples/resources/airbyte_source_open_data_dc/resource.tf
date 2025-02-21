resource "airbyte_source_open_data_dc" "my_source_opendatadc" {
  configuration = {
    api_key  = "...my_api_key..."
    location = "...my_location..."
    marid    = "...my_marid..."
  }
  definition_id = "1655c2a7-520c-41d7-bd17-a7dd1c70af3d"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "90041ae8-0ce7-433d-974a-45b123769945"
}