resource "airbyte_source_salesforce" "my_source_salesforce" {
  configuration = {
    client_id          = "...my_client_id..."
    client_secret      = "...my_client_secret..."
    force_use_bulk_api = true
    is_sandbox         = false
    refresh_token      = "...my_refresh_token..."
    start_date         = "2021-07-25T00:00:00Z"
    stream_slice_step  = "P30D"
    streams_criteria = [
      {
        criteria = "ends with"
        value    = "...my_value..."
      },
    ]
  }
  definition_id = "34526eae-71eb-4759-97dd-0bf2f5721957"
  name          = "Roman Robel"
  secret_id     = "...my_secret_id..."
  workspace_id  = "9226a954-fff9-43d1-ae39-2ce90b9169fb"
}