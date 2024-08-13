resource "airbyte_source_salesforce" "my_source_salesforce" {
  configuration = {
    client_id          = "...my_client_id..."
    client_secret      = "...my_client_secret..."
    force_use_bulk_api = true
    is_sandbox         = false
    refresh_token      = "...my_refresh_token..."
    start_date         = "2021-07-25"
    stream_slice_step  = "P1M"
    streams_criteria = [
      {
        criteria = "exacts"
        value    = "...my_value..."
      },
    ]
  }
  definition_id = "03e6b3fc-a03d-492c-b145-10264179a403"
  name          = "Jean Prosacco"
  secret_id     = "...my_secret_id..."
  workspace_id  = "7b13a43b-1ead-4703-a4ee-b23fe553942b"
}