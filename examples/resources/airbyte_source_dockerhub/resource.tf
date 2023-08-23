resource "airbyte_source_dockerhub" "my_source_dockerhub" {
  configuration = {
    docker_username = "airbyte"
    source_type     = "dockerhub"
  }
  name         = "Kristy Renner DDS"
  secret_id    = "...my_secret_id..."
  workspace_id = "8d975e0e-8419-4d8f-84f1-44f3e07edcc4"
}