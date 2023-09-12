resource "airbyte_source_pipedrive" "my_source_pipedrive" {
  configuration = {
    authorization = {
      api_token = "...my_api_token..."
      auth_type = "Token"
    }
    replication_start_date = "2017-01-25T00:00:00Z"
    source_type            = "pipedrive"
  }
  name         = "Rhonda Hammes"
  secret_id    = "...my_secret_id..."
  workspace_id = "c2059c9c-3f56-47e0-a252-765b1d62fcda"
}