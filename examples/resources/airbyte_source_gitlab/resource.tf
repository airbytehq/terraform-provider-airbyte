resource "airbyte_source_gitlab" "my_source_gitlab" {
  configuration = {
    api_url = "https://gitlab.company.org"
    credentials = {
      o_auth20 = {
        access_token      = "...my_access_token..."
        client_id         = "...my_client_id..."
        client_secret     = "...my_client_secret..."
        refresh_token     = "...my_refresh_token..."
        token_expiry_date = "2022-09-22T11:58:26.764Z"
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
  definition_id = "09ce4fe1-65bc-4484-8e7f-b5df25477f37"
  name          = "Hannah Becker"
  secret_id     = "...my_secret_id..."
  workspace_id  = "7c89bfb0-cb9d-48df-827a-8c72c3eb5dc5"
}