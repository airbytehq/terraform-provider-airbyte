resource "airbyte_source_aircall" "my_source_aircall" {
  configuration = {
    api_id     = "...my_api_id..."
    api_token  = "...my_api_token..."
    start_date = "2022-03-01T00:00:00.000Z"
  }
  name         = "Kari Flatley"
  secret_id    = "...my_secret_id..."
  workspace_id = "c2cd950e-36ac-4c1e-af12-915604b55b32"
}