resource "airbyte_source_gitlab" "my_source_gitlab" {
  configuration = {
    api_url = "https://gitlab.com"
    credentials = {
      o_auth20 = {
        access_token      = "...my_access_token..."
        client_id         = "...my_client_id..."
        client_secret     = "...my_client_secret..."
        refresh_token     = "...my_refresh_token..."
        token_expiry_date = "2022-03-12T08:01:10.085Z"
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
  definition_id = "bc6076e7-14fb-4f0c-bd3a-ed54ef24d0de"
  name          = "Jeffrey Terry"
  secret_id     = "...my_secret_id..."
  workspace_id  = "b9050201-5d2d-4e4b-8db3-3d2b3a27b0b3"
}