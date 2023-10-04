resource "airbyte_source_intercom" "my_source_intercom" {
  configuration = {
    access_token  = "...my_access_token..."
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
    start_date    = "2020-11-16T00:00:00Z"
  }
  name         = "Dr. Bradford Davis"
  secret_id    = "...my_secret_id..."
  workspace_id = "3e9aab71-454c-4b24-9893-e1da46c4f685"
}