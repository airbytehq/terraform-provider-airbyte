resource "airbyte_source_gitlab" "my_source_gitlab" {
  configuration = {
    api_url = "https://gitlab.com"
    credentials = {
      o_auth20 = {
        access_token      = "...my_access_token..."
        client_id         = "...my_client_id..."
        client_secret     = "...my_client_secret..."
        refresh_token     = "...my_refresh_token..."
        token_expiry_date = "2022-05-28T09:23:18.706Z"
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
  definition_id = "51741425-e4d3-48a3-8ea5-6cdfa27fbf62"
  name          = "Regina Price"
  secret_id     = "...my_secret_id..."
  workspace_id  = "ae611122-113e-487b-890e-cc6bf7516116"
}