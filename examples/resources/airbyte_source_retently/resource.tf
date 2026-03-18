resource "airbyte_source_retently" "my_source_retently" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    credentials = {
      authenticate_with_api_token = {
        additional_properties = "{ \"see\": \"documentation\" }"
        api_key               = "...my_api_key..."
      }
    }
  }
  definition_id = "db04ecd1-42e7-4115-9cec-95812905c626"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "fff20602-c218-4268-935e-a746cd7a8c6c"
}