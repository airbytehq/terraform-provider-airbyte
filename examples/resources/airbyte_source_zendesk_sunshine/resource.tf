resource "airbyte_source_zendesk_sunshine" "my_source_zendesksunshine" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    credentials = {
      o_auth20 = {
        access_token  = "...my_access_token..."
        client_id     = "...my_client_id..."
        client_secret = "...my_client_secret..."
      }
    }
    start_date = "2021-01-01T00:00:00Z"
    subdomain  = "...my_subdomain..."
  }
  definition_id = "43634078-6fe9-43b1-8353-3f4d41ebe272"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "07eb1a65-b331-4763-a6be-7aae875b6a88"
}