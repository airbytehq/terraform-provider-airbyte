resource "airbyte_source_dockerhub" "my_source_dockerhub" {
  configuration = {
    docker_username = "airbyte"
  }
  definition_id = "a11e10d0-02e1-4c73-b9ba-1e39a63be209"
  name          = "Ernesto Murazik"
  secret_id     = "...my_secret_id..."
  workspace_id  = "3eb808ec-8c0a-41f1-9671-a56d068f4b5e"
}