resource "airbyte_source_instagram" "my_source_instagram" {
  configuration = {
    access_token  = "...my_access_token..."
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
    start_date    = "2017-01-25T00:00:00Z"
  }
  name         = "Bobbie Dickinson"
  secret_id    = "...my_secret_id..."
  workspace_id = "74a681ee-a74b-487a-9fb1-87d33223d80b"
}