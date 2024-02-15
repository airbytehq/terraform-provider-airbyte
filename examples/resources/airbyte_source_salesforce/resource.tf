resource "airbyte_source_salesforce" "my_source_salesforce" {
  configuration = {
    client_id          = "...my_client_id..."
    client_secret      = "...my_client_secret..."
    force_use_bulk_api = false
    is_sandbox         = true
    refresh_token      = "...my_refresh_token..."
    start_date         = "2021-07-25T00:00:00Z"
    streams_criteria = [
      {
        criteria = "starts not with"
        value    = "...my_value..."
      },
    ]
  }
  definition_id = "ec398117-86e4-44e5-a72c-20971d544a65"
  name          = "Christian Stark"
  secret_id     = "...my_secret_id..."
  workspace_id  = "4609d4ec-6467-4c96-8cce-93394d8a35db"
}