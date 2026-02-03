resource "airbyte_destination_hubspot" "my_destination_hubspot" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    credentials = {
      o_auth = {
        additional_properties = "{ \"see\": \"documentation\" }"
        client_id             = "...my_client_id..."
        client_secret         = "...my_client_secret..."
        refresh_token         = "...my_refresh_token..."
        type                  = "OAuth"
      }
    }
    object_storage_config = {
      none = {
        additional_properties = "{ \"see\": \"documentation\" }"
        storage_type          = "None"
      }
    }
  }
  definition_id = "af6c7bb3-dd33-4dcb-bfe6-80ee5f35ad49"
  name          = "...my_name..."
  workspace_id  = "8c7ae4e0-7eb7-49eb-9e22-e5e22b2d0f4a"
}