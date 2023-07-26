resource "airbyte_source_lokalise" "my_source_lokalise" {
  configuration = {
    api_key     = "...my_api_key..."
    project_id  = "...my_project_id..."
    source_type = "lokalise"
  }
  name         = "Adrienne Mills"
  workspace_id = "ddb58946-1e74-421c-be6d-9502f0ea930b"
}