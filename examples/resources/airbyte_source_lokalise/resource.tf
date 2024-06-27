resource "airbyte_source_lokalise" "my_source_lokalise" {
  configuration = {
    api_key    = "...my_api_key..."
    project_id = "...my_project_id..."
  }
  definition_id = "447712b4-a020-4883-8aab-effb8d976510"
  name          = "Lindsey Pouros"
  secret_id     = "...my_secret_id..."
  workspace_id  = "0a5f2f61-a4e4-4668-89f7-bbeaaef52404"
}