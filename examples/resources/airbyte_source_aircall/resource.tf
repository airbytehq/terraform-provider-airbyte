resource "airbyte_source_aircall" "my_source_aircall" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_id                = "...my_api_id..."
    api_token             = "...my_api_token..."
    start_date            = "2022-03-01T00:00:00.000Z"
  }
  definition_id = "912eb6b7-a893-4a5b-b1c0-36ebbe2de8cd"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "e53fe6b3-92c0-44af-8136-cbb3bc59d66b"
}