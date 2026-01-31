resource "airbyte_source_lever_hiring" "my_source_leverhiring" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    credentials = {
      authenticate_via_lever_api_key = {
        api_key = "...my_api_key..."
      }
    }
    environment = "Production"
    start_date  = "2021-03-01T00:00:00Z"
  }
  definition_id = "90c8cd0b-80ef-44d4-8b58-35b5b43df384"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "baf076c7-c500-4421-a19e-19b468f66cbd"
}