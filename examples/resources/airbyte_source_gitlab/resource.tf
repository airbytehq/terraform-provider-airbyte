resource "airbyte_source_gitlab" "my_source_gitlab" {
  configuration = {
    api_url = "https://gitlab.com"
    credentials = {
      o_auth20 = {
        access_token      = "...my_access_token..."
        client_id         = "...my_client_id..."
        client_secret     = "...my_client_secret..."
        refresh_token     = "...my_refresh_token..."
        token_expiry_date = "2022-11-02T09:49:39.802Z"
      }
    }
    groups_list = [
      "...",
    ]
    projects_list = [
      "...",
    ]
    start_date = "2021-03-01T00:00:00Z"
  }
  definition_id = "a66e5ad3-9192-4931-8c65-ed70eb17cb4f"
  name          = "Mr. Jeremy Gislason"
  secret_id     = "...my_secret_id..."
  workspace_id  = "ca0d0171-1f25-4a28-9de0-4a9ce3be57bf"
}