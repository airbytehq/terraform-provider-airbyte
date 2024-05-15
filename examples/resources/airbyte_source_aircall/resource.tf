resource "airbyte_source_aircall" "my_source_aircall" {
  configuration = {
    api_id     = "...my_api_id..."
    api_token  = "...my_api_token..."
    start_date = "2022-03-01T00:00:00.000Z"
  }
  definition_id = "21854edb-75e7-4d1c-9ddc-2da362faf1b2"
  name          = "Edmond Watsica"
  secret_id     = "...my_secret_id..."
  workspace_id  = "cb1bb055-0b4e-4344-926e-7f29336e2378"
}