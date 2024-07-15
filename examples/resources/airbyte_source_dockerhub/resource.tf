resource "airbyte_source_dockerhub" "my_source_dockerhub" {
  configuration = {
    docker_username = "airbyte"
  }
  definition_id = "19596433-e1d5-4148-8aac-586d055244c5"
  name          = "Stacey Herzog"
  secret_id     = "...my_secret_id..."
  workspace_id  = "57a2c261-8fe1-4b91-9cce-8e649d7675fb"
}