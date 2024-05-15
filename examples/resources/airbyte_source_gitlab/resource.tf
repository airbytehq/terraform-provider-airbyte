resource "airbyte_source_gitlab" "my_source_gitlab" {
  configuration = {
    api_url = "gitlab.com"
    credentials = {
      o_auth20 = {
        access_token      = "...my_access_token..."
        client_id         = "...my_client_id..."
        client_secret     = "...my_client_secret..."
        refresh_token     = "...my_refresh_token..."
        token_expiry_date = "2022-05-02T19:52:42.831Z"
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
  definition_id = "a1ae8949-6294-432a-82ce-acfe7e017f90"
  name          = "Tammy West I"
  secret_id     = "...my_secret_id..."
  workspace_id  = "0e069282-dd6a-412c-b01c-bd9faeeda058"
}