resource "airbyte_source_survicate" "my_source_survicate" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    start_date            = "2022-04-28T21:10:32.292Z"
  }
  definition_id = "9dc099b1-d900-478c-8c25-ba8f354b8e0c"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "3af69d8f-d85b-4d4c-ae36-7c7e7fd6552a"
}