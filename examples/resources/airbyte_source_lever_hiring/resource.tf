resource "airbyte_source_lever_hiring" "my_source_leverhiring" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    credentials = {
      authenticate_via_lever_api_key = {
        api_key = "...my_api_key..."
      }
    }
    environment = "Sandbox"
    start_date  = "2021-03-01T00:00:00Z"
  }
  definition_id = "3981c999-bd7d-4afc-849b-e53dea90c948"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "baf076c7-c500-4421-a19e-19b468f66cbd"
}