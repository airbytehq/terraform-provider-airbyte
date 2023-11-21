resource "airbyte_source_dockerhub" "my_source_dockerhub" {
  configuration = {
    docker_username = "airbyte"
  }
  definition_id = "fd51b66e-c345-4b5c-9bae-74726a8cd9c5"
  name          = "Ernesto Swaniawski"
  secret_id     = "...my_secret_id..."
  workspace_id  = "afda11e1-0d00-42e1-873f-9ba1e39a63be"
}