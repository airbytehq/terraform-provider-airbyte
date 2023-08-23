resource "airbyte_source_salesforce" "my_source_salesforce" {
  configuration = {
    auth_type          = "Client"
    client_id          = "...my_client_id..."
    client_secret      = "...my_client_secret..."
    force_use_bulk_api = true
    is_sandbox         = true
    refresh_token      = "...my_refresh_token..."
    source_type        = "salesforce"
    start_date         = "2021-07-25T00:00:00Z"
    streams_criteria = [
      {
        criteria = "starts with"
        value    = "...my_value..."
      },
    ]
  }
  name         = "Andy Paucek"
  secret_id    = "...my_secret_id..."
  workspace_id = "2e913558-6d18-4f9f-97a4-bfad2bf7d67c"
}