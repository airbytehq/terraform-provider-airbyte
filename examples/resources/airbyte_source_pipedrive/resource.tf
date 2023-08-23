resource "airbyte_source_pipedrive" "my_source_pipedrive" {
  configuration = {
    authorization = {
      api_token = "...my_api_token..."
      auth_type = "Token"
    }
    replication_start_date = "2017-01-25T00:00:00Z"
    source_type            = "pipedrive"
  }
  name         = "Albert Sipes"
  secret_id    = "...my_secret_id..."
  workspace_id = "fcdace1f-0121-46ce-a239-e8f25cd0d19d"
}