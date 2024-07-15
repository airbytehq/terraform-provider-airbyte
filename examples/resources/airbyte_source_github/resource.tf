resource "airbyte_source_github" "my_source_github" {
  configuration = {
    api_url = "https://github.com"
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
    repository = "airbytehq/airbyte airbytehq/another-repo"
    start_date = "2021-03-01T00:00:00Z"
  }
  definition_id = "84cd8bc6-076e-4714-bbf0-cfd3aed54ef2"
  name          = "Lynette Bartoletti"
  secret_id     = "...my_secret_id..."
  workspace_id  = "80e3db90-5020-415d-ade4-b8db33d2b3a2"
}