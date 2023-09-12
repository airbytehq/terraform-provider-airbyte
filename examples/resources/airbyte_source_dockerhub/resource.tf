resource "airbyte_source_dockerhub" "my_source_dockerhub" {
  configuration = {
    docker_username = "airbyte"
    source_type     = "dockerhub"
  }
  name         = "Joe Haag"
  secret_id    = "...my_secret_id..."
  workspace_id = "3e07edcc-4aa5-4f3c-abd9-05a972e05672"
}