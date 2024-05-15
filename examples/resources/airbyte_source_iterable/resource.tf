resource "airbyte_source_iterable" "my_source_iterable" {
  configuration = {
    api_key    = "...my_api_key..."
    start_date = "2021-04-01T00:00:00Z"
  }
  definition_id = "65ed70eb-17cb-44fc-a400-2ca0d01711f2"
  name          = "Rosie Christiansen"
  secret_id     = "...my_secret_id..."
  workspace_id  = "de04a9ce-3be5-47bf-a461-27442775ed08"
}