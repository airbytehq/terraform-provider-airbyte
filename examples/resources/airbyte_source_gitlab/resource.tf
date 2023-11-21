resource "airbyte_source_gitlab" "my_source_gitlab" {
  configuration = {
    api_url = "gitlab.com"
    credentials = {
      source_gitlab_o_auth2_0 = {
        access_token      = "...my_access_token..."
        client_id         = "...my_client_id..."
        client_secret     = "...my_client_secret..."
        refresh_token     = "...my_refresh_token..."
        token_expiry_date = "2022-01-24T13:56:19.954Z"
      }
    }
    groups = "airbyte.io"
    groups_list = [
      "...",
    ]
    projects = "airbyte.io/documentation"
    projects_list = [
      "...",
    ]
    start_date = "2021-03-01T00:00:00Z"
  }
  definition_id = "e4cb55c6-95e2-4f08-ab76-e351cef20de4"
  name          = "Winston Schroeder"
  secret_id     = "...my_secret_id..."
  workspace_id  = "2b42c84c-d8bc-4607-ae71-4fbf0cfd3aed"
}