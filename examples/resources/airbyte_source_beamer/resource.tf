resource "airbyte_source_beamer" "my_source_beamer" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
    start_date            = "2021-10-26T21:23:11.011Z"
  }
  definition_id = "91ceabfa-9171-43db-a4db-d33617a07bcd"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "6a017d51-987f-43f7-aabe-32bfe4d2a3cf"
}