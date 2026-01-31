resource "airbyte_source_dropbox_sign" "my_source_dropboxsign" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    start_date            = "2022-04-21T12:42:19.480Z"
  }
  definition_id = "1fb89922-1e7a-42bb-8138-520cbe96611d"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "8e966ff8-d7b0-45aa-b949-755fda3ed5e7"
}