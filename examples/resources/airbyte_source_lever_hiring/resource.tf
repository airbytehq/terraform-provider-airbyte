resource "airbyte_source_lever_hiring" "my_source_leverhiring" {
  configuration = {
    credentials = {
      authenticate_via_lever_api_key = {
        api_key = "...my_api_key..."
      }
    }
    environment = "Production"
    start_date  = "2021-03-01T00:00:00Z"
  }
  definition_id = "f48b8f86-7010-454c-9db1-ce49a8fc7f8e"
  name          = "Anita Jacobson"
  secret_id     = "...my_secret_id..."
  workspace_id  = "645cfb24-49ee-4f87-a4eb-4b875ea1fa63"
}