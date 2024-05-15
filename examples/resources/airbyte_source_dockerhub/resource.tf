resource "airbyte_source_dockerhub" "my_source_dockerhub" {
  configuration = {
    docker_username = "airbyte"
  }
  definition_id = "5a34ff68-0c88-4d8e-9f74-31721e4227fd"
  name          = "Carolyn Roberts"
  secret_id     = "...my_secret_id..."
  workspace_id  = "ec345b5c-1bae-4747-a6a8-cd9c5aad47af"
}