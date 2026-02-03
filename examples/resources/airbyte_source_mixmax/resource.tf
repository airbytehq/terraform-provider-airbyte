resource "airbyte_source_mixmax" "my_source_mixmax" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    start_date            = "2022-09-02T22:23:25.117Z"
  }
  definition_id = "a1f4e5ac-fef3-4693-ab2c-c34fd78362b3"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "a15d8382-2d59-4454-bd6d-8abe446a9faa"
}