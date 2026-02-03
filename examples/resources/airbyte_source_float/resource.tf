resource "airbyte_source_float" "my_source_float" {
  configuration = {
    access_token          = "...my_access_token..."
    additional_properties = "{ \"see\": \"documentation\" }"
    start_date            = "2022-10-11T13:03:03.686Z"
  }
  definition_id = "eadf62fd-b854-4d15-bb0b-38a59ba3845b"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "c28860a4-43f5-405c-9861-f8a85f392fb4"
}