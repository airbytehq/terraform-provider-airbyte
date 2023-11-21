resource "airbyte_source_twitter" "my_source_twitter" {
  configuration = {
    api_key    = "...my_api_key..."
    end_date   = "2022-09-12T14:25:08.896Z"
    query      = "...my_query..."
    start_date = "2022-06-24T22:46:50.628Z"
  }
  definition_id = "89040904-7267-4ce8-aa32-2e02b7e6dd49"
  name          = "Domingo Heller"
  secret_id     = "...my_secret_id..."
  workspace_id  = "592a5dd7-ddbd-4797-92eb-894fd682a677"
}