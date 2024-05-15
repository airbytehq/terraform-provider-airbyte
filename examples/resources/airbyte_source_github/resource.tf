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
    repository = "airbytehq/airbyte airbytehq/another-repo"
    start_date = "2021-03-01T00:00:00Z"
  }
  definition_id = "e4d38a30-ea56-4cdf-a27f-bf6225b4bae6"
  name          = "Martha Bergnaum"
  secret_id     = "...my_secret_id..."
  workspace_id  = "113e87b4-90ec-4c6b-b751-6116fc803c83"
}