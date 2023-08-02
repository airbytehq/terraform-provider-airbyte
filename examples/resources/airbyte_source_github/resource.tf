resource "airbyte_source_github" "my_source_github" {
  configuration = {
    branch = "airbytehq/airbyte/master airbytehq/airbyte/my-branch"
    credentials = {
      source_github_authentication_o_auth = {
        access_token = "...my_access_token..."
        option_title = "OAuth Credentials"
      }
    }
    repository        = "airbytehq/airbyte airbytehq/another-repo"
    requests_per_hour = 6
    source_type       = "github"
    start_date        = "2021-03-01T00:00:00Z"
  }
  name         = "Brandy Kuvalis V"
  secret_id    = "...my_secretId..."
  workspace_id = "83dabf9e-f3ff-4dd9-b7f0-79af4d35724c"
}