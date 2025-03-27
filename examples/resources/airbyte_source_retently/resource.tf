resource "airbyte_source_retently" "my_source_retently" {
  configuration = {
    credentials = {
      authenticate_with_api_token = {
        additional_properties = "{ \"see\": \"documentation\" }"
        api_key               = "...my_api_key..."
      }
    }
  }
  definition_id = "cca4315f-0685-4a8f-b821-e7a8f8d7f4b8"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "fff20602-c218-4268-935e-a746cd7a8c6c"
}