resource "airbyte_source_dockerhub" "my_source_dockerhub" {
  configuration = {
    docker_username = "airbyte"
  }
  definition_id = "b6a417fa-eb4f-473b-be8d-c371ecbee105"
  name          = "Katherine Reichel"
  secret_id     = "...my_secret_id..."
  workspace_id  = "9ed171c9-d9f9-4b47-83ac-232bfa41c80b"
}