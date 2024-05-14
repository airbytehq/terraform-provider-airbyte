resource "airbyte_source_salesforce" "my_source_salesforce" {
  configuration = {
    client_id          = "...my_client_id..."
    client_secret      = "...my_client_secret..."
    force_use_bulk_api = true
    is_sandbox         = true
    refresh_token      = "...my_refresh_token..."
    start_date         = "2021-07-25T00:00:00Z"
    stream_slice_step  = "PT12H"
    streams_criteria = [
      {
        criteria = "ends not with"
        value    = "...my_value..."
      },
    ]
  }
  definition_id = "81056bc9-77a3-4bf4-9ff8-dd835d80427d"
  name          = "Edna Nicolas"
  secret_id     = "...my_secret_id..."
  workspace_id  = "1d8c723c-8e5e-4259-be4e-f6493875b5a3"
}