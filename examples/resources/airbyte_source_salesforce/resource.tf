resource "airbyte_source_salesforce" "my_source_salesforce" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    client_id             = "...my_client_id..."
    client_secret         = "...my_client_secret..."
    force_use_bulk_api    = true
    is_sandbox            = false
    lookback_window       = "PT10M"
    refresh_token         = "...my_refresh_token..."
    start_date            = "2021-07-25"
    stream_slice_step     = "PT12H"
    streams_criteria = [
      {
        criteria = "not contains"
        value    = "...my_value..."
      }
    ]
  }
  definition_id = "ac775334-3ab2-43d2-b41a-9b554542b831"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "009ca65a-dea0-4cfe-b1a6-e5f50c2ef465"
}