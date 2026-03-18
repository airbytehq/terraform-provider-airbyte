resource "airbyte_source_survicate" "my_source_survicate" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    start_date            = "2022-04-28T21:10:32.292Z"
  }
  definition_id = "5770c58b-3288-4fa0-a968-bb8a6607fae1"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "3af69d8f-d85b-4d4c-ae36-7c7e7fd6552a"
}