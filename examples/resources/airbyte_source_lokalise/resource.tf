resource "airbyte_source_lokalise" "my_source_lokalise" {
  configuration = {
    api_key    = "...my_api_key..."
    project_id = "...my_project_id..."
  }
  definition_id = "8830aabe-ffb8-4d97-a510-59b440a5f2f6"
  name          = "Inez Gottlieb"
  secret_id     = "...my_secret_id..."
  workspace_id  = "66849f7b-beaa-4ef5-a404-3cb4c473e8c7"
}