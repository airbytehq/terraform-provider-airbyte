resource "airbyte_source_github" "my_source_github" {
  configuration = {
    api_url = "https://github.company.org"
    branch  = "airbytehq/airbyte/master airbytehq/airbyte/my-branch"
    branches = [
      "...",
    ]
    credentials = {
      o_auth = {
        access_token  = "...my_access_token..."
        client_id     = "...my_client_id..."
        client_secret = "...my_client_secret..."
      }
    }
    max_waiting_time = 10
    repositories = [
      "...",
    ]
    repository = "airbytehq/*"
    start_date = "2021-03-01T00:00:00Z"
  }
  definition_id = "527913ed-fcf9-4c90-98e6-9d20ee3e4cb5"
  name          = "Rosalie Hoppe"
  secret_id     = "...my_secret_id..."
  workspace_id  = "e2f08eb7-6e35-41ce-b20d-e4cfc332b42c"
}