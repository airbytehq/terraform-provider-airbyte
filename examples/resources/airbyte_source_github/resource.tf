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
    repositories = [
      "...",
    ]
    repository        = "airbytehq/airbyte"
    requests_per_hour = 10
    start_date        = "2021-03-01T00:00:00Z"
  }
  definition_id = "e017f905-2f20-440e-8692-82dd6a12cb01"
  name          = "Bennie Stroman"
  secret_id     = "...my_secret_id..."
  workspace_id  = "aeeda058-2852-4791-bedf-cf9c9058e69d"
}