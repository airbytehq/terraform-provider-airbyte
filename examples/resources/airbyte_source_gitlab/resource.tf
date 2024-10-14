resource "airbyte_source_gitlab" "my_source_gitlab" {
  configuration = {
    api_url = "gitlab.com"
    credentials = {
      o_auth20 = {
        access_token      = "...my_access_token..."
        client_id         = "...my_client_id..."
        client_secret     = "...my_client_secret..."
        refresh_token     = "...my_refresh_token..."
        token_expiry_date = "2022-09-11T04:53:34.681Z"
      }
      private_token = {
        access_token = "...my_access_token..."
      }
    }
    groups_list = [
      "..."
    ]
    projects_list = [
      "..."
    ]
    start_date = "2021-03-01T00:00:00Z"
  }
  definition_id = "b72494c1-07fe-419b-9b4c-5841c8430c2c"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "ba2d75f3-474c-4f0b-8254-abc13264e426"
}