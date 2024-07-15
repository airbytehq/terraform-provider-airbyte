resource "airbyte_source_lokalise" "my_source_lokalise" {
  configuration = {
    api_key    = "...my_api_key..."
    project_id = "...my_project_id..."
  }
  definition_id = "ef524043-cb4c-4473-a8c7-bd5915174a55"
  name          = "Melba Shields"
  secret_id     = "...my_secret_id..."
  workspace_id  = "1daf7626-ef51-4c5f-a52e-0c6c0cc93e76"
}