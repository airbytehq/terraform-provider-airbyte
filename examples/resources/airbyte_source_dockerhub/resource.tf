resource "airbyte_source_dockerhub" "my_source_dockerhub" {
  configuration = {
    docker_username = "airbyte"
  }
  definition_id = "de4cfc33-2b42-4c84-8d8b-c6076e714fbf"
  name          = "Erma Wyman"
  secret_id     = "...my_secret_id..."
  workspace_id  = "aed54ef2-4d0d-4e80-a3db-90502015d2de"
}