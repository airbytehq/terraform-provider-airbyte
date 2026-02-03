resource "airbyte_source_zoho_inventory" "my_source_zohoinventory" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    client_id             = "...my_client_id..."
    client_secret         = "...my_client_secret..."
    domain                = "com.au"
    refresh_token         = "...my_refresh_token..."
    start_date            = "2022-06-28T18:07:02.217Z"
  }
  definition_id = "59c74cfe-b428-40d1-b466-cd38cfada0be"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "4ebb86cc-42ee-4e88-bd34-e708670d2c5c"
}