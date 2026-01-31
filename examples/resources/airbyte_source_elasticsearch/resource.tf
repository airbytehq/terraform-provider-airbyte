resource "airbyte_source_elasticsearch" "my_source_elasticsearch" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    authentication_method = {
      username_password = {
        additional_properties = "{ \"see\": \"documentation\" }"
        password              = "...my_password..."
        username              = "...my_username..."
      }
    }
    endpoint = "...my_endpoint..."
  }
  definition_id = "d56c8566-a458-4025-bfb2-f47a203393a6"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "48579a73-be0a-47d3-ac3f-4830e3574097"
}