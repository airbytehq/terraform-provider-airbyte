resource "airbyte_source_dockerhub" "my_source_dockerhub" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    docker_username       = "airbyte"
  }
  definition_id = "3cca0b98-4ec1-477b-959c-b0f3c4e3f3b0"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "a2e0924a-f414-46a4-be78-5d0365407d70"
}