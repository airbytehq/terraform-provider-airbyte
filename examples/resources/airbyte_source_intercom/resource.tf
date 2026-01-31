resource "airbyte_source_intercom" "my_source_intercom" {
  configuration = {
    access_token            = "...my_access_token..."
    activity_logs_time_step = 30
    additional_properties   = "{ \"see\": \"documentation\" }"
    client_id               = "...my_client_id..."
    client_secret           = "...my_client_secret..."
    lookback_window         = 60
    start_date              = "2020-11-16T00:00:00Z"
  }
  definition_id = "ba1133d3-c5a5-4970-9a43-797e5df4ec84"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "84e9b47b-01ac-499b-b969-63ece4bac1b1"
}