resource "airbyte_source_instagram" "my_source_instagram" {
  configuration = {
    access_token  = "...my_access_token..."
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
    start_date    = "2017-01-25T00:00:00Z"
  }
  definition_id = "b1a975dd-1b5a-4029-9b19-7bbb0227d625"
  name          = "Earl Bruen"
  secret_id     = "...my_secret_id..."
  workspace_id  = "f731c6e6-bc1c-4af1-a6ae-e78925477f38"
}