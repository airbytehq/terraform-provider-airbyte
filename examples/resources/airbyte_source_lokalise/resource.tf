resource "airbyte_source_lokalise" "my_source_lokalise" {
  configuration = {
    api_key    = "...my_api_key..."
    project_id = "...my_project_id..."
  }
  definition_id = "ccdd2e95-af6e-4d3c-87c1-4160113c2d3c"
  name          = "Derek Thiel"
  secret_id     = "...my_secret_id..."
  workspace_id  = "64b86a42-dbbb-4853-ac4b-5e6a18b0d790"
}