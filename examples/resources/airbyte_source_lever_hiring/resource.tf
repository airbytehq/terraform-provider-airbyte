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
  definition_id = "299a611c-c7be-43e8-ba71-88dc05c92c20"
  name          = "Linda White"
  secret_id     = "...my_secret_id..."
  workspace_id  = "2ba7d43d-20d3-4384-a15e-d53522788fae"
}