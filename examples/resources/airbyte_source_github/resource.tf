resource "airbyte_source_github" "my_source_github" {
  configuration = {
    branch = "airbytehq/airbyte/master airbytehq/airbyte/my-branch"
    credentials = {
      source_github_authentication_o_auth = {
        access_token  = "...my_access_token..."
        client_id     = "...my_client_id..."
        client_secret = "...my_client_secret..."
      }
    }
    repository        = "airbytehq/*"
    requests_per_hour = 9
    start_date        = "2021-03-01T00:00:00Z"
  }
  name         = "Gustavo Mertz"
  secret_id    = "...my_secret_id..."
  workspace_id = "e7b2f5ca-6ecd-4faf-ab05-210208e036b2"
}