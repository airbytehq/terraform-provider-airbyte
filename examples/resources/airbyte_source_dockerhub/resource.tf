resource "airbyte_source_dockerhub" "my_source_dockerhub" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    docker_username       = "airbyte"
  }
  definition_id = "72d405a3-56d8-499f-a571-667c03406e43"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "a2e0924a-f414-46a4-be78-5d0365407d70"
}