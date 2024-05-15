resource "airbyte_source_salesforce" "my_source_salesforce" {
  configuration = {
    client_id          = "...my_client_id..."
    client_secret      = "...my_client_secret..."
    force_use_bulk_api = true
    is_sandbox         = false
    refresh_token      = "...my_refresh_token..."
    start_date         = "2021-07-25"
    stream_slice_step  = "PT12H"
    streams_criteria = [
      {
        criteria = "ends with"
        value    = "...my_value..."
      },
    ]
  }
  definition_id = "8aabbad0-7307-482c-be82-2825101e3e25"
  name          = "Ruben McClure"
  secret_id     = "...my_secret_id..."
  workspace_id  = "8d038885-1ec0-46fd-bb8c-c64e95a7a369"
}