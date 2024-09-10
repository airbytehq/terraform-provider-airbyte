resource "airbyte_source_salesforce" "my_source_salesforce" {
  configuration = {
    client_id          = "...my_client_id..."
    client_secret      = "...my_client_secret..."
    force_use_bulk_api = true
    is_sandbox         = false
    refresh_token      = "...my_refresh_token..."
    start_date         = "2021-07-25"
    stream_slice_step  = "P1Y"
    streams_criteria = [
      {
        criteria = "not contains"
        value    = "...my_value..."
      },
    ]
  }
  definition_id = "3d512342-f997-4d05-9d38-a2e5fcf99c41"
  name          = "Jessie Howe"
  secret_id     = "...my_secret_id..."
  workspace_id  = "0cbc1b99-ee1e-4960-9660-5b0d51b3114e"
}