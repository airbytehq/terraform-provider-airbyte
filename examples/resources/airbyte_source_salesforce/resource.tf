resource "airbyte_source_salesforce" "my_source_salesforce" {
  configuration = {
    auth_type          = "Client"
    client_id          = "...my_client_id..."
    client_secret      = "...my_client_secret..."
    force_use_bulk_api = true
    is_sandbox         = false
    refresh_token      = "...my_refresh_token..."
    source_type        = "salesforce"
    start_date         = "2021-07-25"
    streams_criteria = [
      {
        criteria = "not contains"
        value    = "...my_value..."
      },
    ]
  }
  name         = "Gregg Boyer Sr."
  secret_id    = "...my_secret_id..."
  workspace_id = "ebde64bf-cc54-469d-8015-dfa796206bef"
}