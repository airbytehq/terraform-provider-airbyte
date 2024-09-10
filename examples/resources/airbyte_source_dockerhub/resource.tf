resource "airbyte_source_dockerhub" "my_source_dockerhub" {
  configuration = {
    docker_username = "airbyte"
  }
  definition_id = "cfbec287-654f-412b-8840-28fbb0cddcf8"
  name          = "Julia Watsica"
  secret_id     = "...my_secret_id..."
  workspace_id  = "60165466-352d-4a9b-84e2-6c5d5cf50fbf"
}