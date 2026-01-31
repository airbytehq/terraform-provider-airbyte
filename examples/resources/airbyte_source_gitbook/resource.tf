resource "airbyte_source_gitbook" "my_source_gitbook" {
  configuration = {
    access_token          = "...my_access_token..."
    additional_properties = "{ \"see\": \"documentation\" }"
    space_id              = "...my_space_id..."
  }
  definition_id = "bd853e05-630d-4e28-852c-3ff9e84d219d"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "a7f7be58-dede-4a51-8b06-e957318ad0a2"
}