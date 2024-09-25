resource "airbyte_source_monday" "my_source_monday" {
  configuration = {
    credentials = {
      api_token = {
        api_token = "...my_api_token..."
      }
    }
  }
  definition_id = "e7b59a4e-7815-42cb-9266-e4c12d05e7f5"
  name          = "Drew Gerlach III"
  secret_id     = "...my_secret_id..."
  workspace_id  = "25cbff5b-31f2-4b93-84d3-ebf32902de61"
}