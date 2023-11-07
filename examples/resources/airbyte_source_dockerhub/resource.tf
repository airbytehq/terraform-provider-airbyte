resource "airbyte_source_dockerhub" "my_source_dockerhub" {
  configuration = {
    docker_username = "airbyte"
  }
  name         = "Rebecca Gerlach"
  secret_id    = "...my_secret_id..."
  workspace_id = "3e9a244d-7bc1-4a5a-ae1c-c19313722140"
}