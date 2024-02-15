resource "airbyte_source_instagram" "my_source_instagram" {
  configuration = {
    access_token  = "...my_access_token..."
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
    start_date    = "2017-01-25T00:00:00Z"
  }
  definition_id = "fbde6ae5-3955-4108-8d8d-f8fddacae826"
  name          = "Jan Willms"
  secret_id     = "...my_secret_id..."
  workspace_id  = "9bb4850d-654b-4e1e-b85d-e7e327e77875"
}