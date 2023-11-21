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
  definition_id = "3d75c669-3a6b-492e-b166-50e4c3120d77"
  name          = "Bill Howell"
  secret_id     = "...my_secret_id..."
  workspace_id  = "c796fdac-1f48-4b8f-8670-1054c1db1ce4"
}