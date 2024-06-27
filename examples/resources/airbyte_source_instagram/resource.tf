resource "airbyte_source_instagram" "my_source_instagram" {
  configuration = {
    access_token  = "...my_access_token..."
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
    start_date    = "2017-01-25T00:00:00Z"
  }
  definition_id = "61b75b72-6765-4eab-9ad8-42954bd759bd"
  name          = "Clayton Prosacco"
  secret_id     = "...my_secret_id..."
  workspace_id  = "f80b7f55-7094-4a97-b635-6d53391630fd"
}