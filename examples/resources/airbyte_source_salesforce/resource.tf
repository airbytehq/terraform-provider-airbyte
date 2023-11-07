resource "airbyte_source_salesforce" "my_source_salesforce" {
  configuration = {
    client_id          = "...my_client_id..."
    client_secret      = "...my_client_secret..."
    force_use_bulk_api = false
    is_sandbox         = true
    refresh_token      = "...my_refresh_token..."
    start_date         = "2021-07-25"
    streams_criteria = [
      {
        criteria = "starts with"
        value    = "...my_value..."
      },
    ]
  }
  name         = "Joel Powlowski"
  secret_id    = "...my_secret_id..."
  workspace_id = "e953bf2d-efea-42fd-945f-48d363139855"
}