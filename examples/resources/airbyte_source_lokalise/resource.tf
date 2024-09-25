resource "airbyte_source_lokalise" "my_source_lokalise" {
  configuration = {
    api_key    = "...my_api_key..."
    project_id = "...my_project_id..."
  }
  definition_id = "91bbbc35-ba89-42b6-9580-5ab7b9331a5d"
  name          = "Pablo Wisozk"
  secret_id     = "...my_secret_id..."
  workspace_id  = "6ab5ec8c-aacd-48d2-abfd-c0f33811ddad"
}