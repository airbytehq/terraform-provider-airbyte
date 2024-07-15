resource "airbyte_source_intercom" "my_source_intercom" {
  configuration = {
    access_token            = "...my_access_token..."
    activity_logs_time_step = 30
    client_id               = "...my_client_id..."
    client_secret           = "...my_client_secret..."
    start_date              = "2020-11-16T00:00:00Z"
  }
  definition_id = "4e17a648-8571-41ab-94fe-75a513e00977"
  name          = "Geneva Fisher"
  secret_id     = "...my_secret_id..."
  workspace_id  = "7c06dd86-b4fb-4de6-ae53-955108cd8df8"
}