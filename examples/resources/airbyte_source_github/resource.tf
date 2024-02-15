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
    repositories = [
      "...",
    ]
    repository = "airbytehq/airbyte"
    start_date = "2021-03-01T00:00:00Z"
  }
  definition_id = "c14a349f-de89-4ab2-b6cb-ad00caee12c4"
  name          = "Angel Haley"
  secret_id     = "...my_secret_id..."
  workspace_id  = "7e54a27b-617a-4012-a6bf-68e1922df283"
}