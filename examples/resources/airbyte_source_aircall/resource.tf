resource "airbyte_source_aircall" "my_source_aircall" {
  configuration = {
    api_id      = "...my_api_id..."
    api_token   = "...my_api_token..."
    source_type = "aircall"
    start_date  = "2022-03-01T00:00:00.000Z"
  }
  name         = "Cecelia Wiza"
  secret_id    = "...my_secret_id..."
  workspace_id = "02bae0be-2d78-4225-9e3e-a4b5197f9244"
}