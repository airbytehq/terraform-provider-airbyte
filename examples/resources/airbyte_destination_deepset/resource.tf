resource "airbyte_destination_deepset" "my_destination_deepset" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    base_url              = "...my_base_url..."
    retries               = 5.99
    workspace             = "...my_workspace..."
  }
  definition_id = "c11a7a64-baea-4147-88f7-cef552af7b76"
  name          = "...my_name..."
  workspace_id  = "8b8fb71d-00cc-452f-b5fb-61a41744e4b5"
}