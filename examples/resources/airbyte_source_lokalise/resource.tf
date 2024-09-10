resource "airbyte_source_lokalise" "my_source_lokalise" {
  configuration = {
    api_key    = "...my_api_key..."
    project_id = "...my_project_id..."
  }
  definition_id = "a67a8515-0ea8-4612-8cd6-18d742806812"
  name          = "Luke King"
  secret_id     = "...my_secret_id..."
  workspace_id  = "69526155-53a7-4134-98a3-f9799a12d6e3"
}