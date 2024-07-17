resource "airbyte_source_lever_hiring" "my_source_leverhiring" {
  configuration = {
    credentials = {
      authenticate_via_lever_api_key = {
        api_key = "...my_api_key..."
      }
    }
    environment = "Sandbox"
    start_date  = "2021-03-01T00:00:00Z"
  }
  definition_id = "13c6e3bb-b93b-4d41-bd75-c6693a6b92ef"
  name          = "Rosemary Hyatt PhD"
  secret_id     = "...my_secret_id..."
  workspace_id  = "4c3120d7-7a56-46ac-b96f-dac1f48b8f86"
}