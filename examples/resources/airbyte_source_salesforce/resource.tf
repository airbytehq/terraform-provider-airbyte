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
  definition_id = "78e7243c-021b-4c07-babf-4dfebd414e5a"
  name          = "Barbara Franecki"
  secret_id     = "...my_secret_id..."
  workspace_id  = "b3fca03d-92cb-4145-9026-4179a40301bb"
}