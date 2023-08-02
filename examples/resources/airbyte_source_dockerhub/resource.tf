resource "airbyte_source_dockerhub" "my_source_dockerhub" {
  configuration = {
    docker_username = "airbyte"
    source_type     = "dockerhub"
  }
  name         = "Nick Blanda"
  secret_id    = "...my_secretId..."
  workspace_id = "d975e0e8-419d-48f8-8f14-4f3e07edcc4a"
}