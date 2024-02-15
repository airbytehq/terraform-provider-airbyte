resource "airbyte_source_dockerhub" "my_source_dockerhub" {
  configuration = {
    docker_username = "airbyte"
  }
  definition_id = "0a2cef78-1247-45bc-a9a4-804a9e0ddc31"
  name          = "Katie Powlowski"
  secret_id     = "...my_secret_id..."
  workspace_id  = "fd5d6c69-da54-497a-9d71-ffdea586a097"
}