resource "airbyte_source_uppromote" "my_source_uppromote" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    start_date            = "2022-06-18T03:50:51.084Z"
  }
  definition_id = "1aef531e-9346-45b6-b813-0c86292413a1"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "4e53ac15-c8bb-4a1d-ad64-4a5a28baec66"
}