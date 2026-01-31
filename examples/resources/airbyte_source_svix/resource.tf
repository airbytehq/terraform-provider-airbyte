resource "airbyte_source_svix" "my_source_svix" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    start_date            = "2022-11-23T16:13:07.587Z"
  }
  definition_id = "459060da-f8d8-4354-b499-59f426179f1c"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "d1087479-cf9b-4700-a6cb-9692b1b8dc3d"
}