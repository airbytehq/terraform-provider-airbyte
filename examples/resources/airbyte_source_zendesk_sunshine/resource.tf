resource "airbyte_source_zendesk_sunshine" "my_source_zendesksunshine" {
  configuration = {
    credentials = {
      api_token = {
        api_token = "...my_api_token..."
        email     = "Amos.McKenzie@hotmail.com"
      }
    }
    start_date = "2021-01-01T00:00:00Z"
    subdomain  = "...my_subdomain..."
  }
  definition_id = "2de7b1a9-3e59-415f-a584-4c8d7f9e67ba"
  name          = "Randal Kuphal"
  secret_id     = "...my_secret_id..."
  workspace_id  = "23a87a42-abf6-4ae5-b802-daa821998eac"
}