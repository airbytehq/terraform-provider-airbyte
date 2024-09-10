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
    max_waiting_time = 60
    repositories = [
      "...",
    ]
    repository = "airbytehq/*"
    start_date = "2021-03-01T00:00:00Z"
  }
  definition_id = "3206afb3-a724-4a60-9401-34e58876cb03"
  name          = "Jan Bernier"
  secret_id     = "...my_secret_id..."
  workspace_id  = "ae06a57c-7c57-47af-9e5b-addd2747bbc7"
}