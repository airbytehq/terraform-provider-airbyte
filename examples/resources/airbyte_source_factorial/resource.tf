resource "airbyte_source_factorial" "my_source_factorial" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    limit                 = "...my_limit..."
    start_date            = "2021-04-14T22:18:45.136Z"
  }
  definition_id = "0ee93761-f8af-406c-aa66-d7cf412d601d"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "6fa4f659-f230-40e3-a509-894b57bb0b12"
}