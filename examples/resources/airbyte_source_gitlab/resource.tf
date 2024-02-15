resource "airbyte_source_gitlab" "my_source_gitlab" {
  configuration = {
    api_url = "https://gitlab.com"
    credentials = {
      o_auth20 = {
        access_token      = "...my_access_token..."
        client_id         = "...my_client_id..."
        client_secret     = "...my_client_secret..."
        refresh_token     = "...my_refresh_token..."
        token_expiry_date = "2022-11-28T11:02:53.211Z"
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
  definition_id = "13a52314-031f-4d7b-82b3-c164c1950da3"
  name          = "Leigh Rempel"
  secret_id     = "...my_secret_id..."
  workspace_id  = "d9b5a75a-7c5f-4c21-9722-b310b676fb73"
}