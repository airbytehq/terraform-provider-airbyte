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
    repository = "airbytehq/*"
    start_date = "2021-03-01T00:00:00Z"
  }
  definition_id = "e08fd2ca-f83f-4045-910a-7c570570b889"
  name          = "Tara Medhurst"
  secret_id     = "...my_secret_id..."
  workspace_id  = "4e6d7c2f-caa3-486d-a1d2-ddf0351c49c6"
}