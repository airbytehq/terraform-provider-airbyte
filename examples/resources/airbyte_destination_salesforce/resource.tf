resource "airbyte_destination_salesforce" "my_destination_salesforce" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    client_id             = "...my_client_id..."
    client_secret         = "...my_client_secret..."
    is_sandbox            = true
    object_storage_config = {
      none = {
        additional_properties = "{ \"see\": \"documentation\" }"
        storage_type          = "None"
      }
    }
    refresh_token = "...my_refresh_token..."
  }
  definition_id = "834c5c72-4b2f-4252-9552-b0a6b8d326d7"
  name          = "...my_name..."
  workspace_id  = "5a3a63b8-68e0-48b5-9453-8ed1f1864807"
}