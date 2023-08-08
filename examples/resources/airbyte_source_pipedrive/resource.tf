resource "airbyte_source_pipedrive" "my_source_pipedrive" {
  configuration = {
    authorization = {
      api_token = "...my_api_token..."
      auth_type = "Token"
    }
    replication_start_date = "2017-01-25T00:00:00Z"
    source_type            = "pipedrive"
  }
  name         = "Clayton Graham"
  secret_id    = "...my_secret_id..."
  workspace_id = "6cbdeecf-6b99-4bc6-b562-ebfdf55c294c"
}