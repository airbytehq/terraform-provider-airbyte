resource "airbyte_source_github" "my_source_github" {
  configuration = {
    branch = "airbytehq/airbyte/master airbytehq/airbyte/my-branch"
    credentials = {
      source_github_authentication_o_auth = {
        access_token  = "...my_access_token..."
        client_id     = "...my_client_id..."
        client_secret = "...my_client_secret..."
        option_title  = "OAuth Credentials"
      }
    }
    repository        = "airbytehq/airbyte"
    requests_per_hour = 10
    source_type       = "github"
    start_date        = "2021-03-01T00:00:00Z"
  }
  name         = "Van Kuhlman IV"
  secret_id    = "...my_secret_id..."
  workspace_id = "9af4d357-24cd-4b0f-8d28-1187d56844ed"
}