resource "airbyte_source_instagram" "my_source_instagram" {
  configuration = {
    access_token  = "...my_access_token..."
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
    start_date    = "2017-01-25T00:00:00Z"
  }
  definition_id = "20bd7a7e-c191-4626-87e6-80e4417c6f4b"
  name          = "Margaret Maggio"
  secret_id     = "...my_secret_id..."
  workspace_id  = "206a4b04-3ef0-49e6-9b75-b726765eab1a"
}