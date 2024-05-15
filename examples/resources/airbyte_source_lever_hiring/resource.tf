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
  definition_id = "b385957e-3c92-41cc-9284-a21155c54910"
  name          = "Linda Muller"
  secret_id     = "...my_secret_id..."
  workspace_id  = "9a984e4b-07bc-4af1-bed5-606ac59e7c8a"
}