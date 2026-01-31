resource "airbyte_source_fillout" "my_source_fillout" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    start_date            = "2022-01-24T00:42:35.558Z"
  }
  definition_id = "eb39b39f-85af-4350-b3f4-7ab568147b8d"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "e6464382-3f05-4d90-9ec7-bbdbec4a6307"
}