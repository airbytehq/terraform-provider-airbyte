resource "airbyte_source_intercom" "my_source_intercom" {
  configuration = {
    access_token            = "...my_access_token..."
    activity_logs_time_step = 5
    client_id               = "...my_client_id..."
    client_secret           = "...my_client_secret..."
    start_date              = "2020-11-16T00:00:00Z"
  }
  definition_id = "566ac796-fdac-41f4-8b8f-86701054c1db"
  name          = "Vicky Torphy"
  secret_id     = "...my_secret_id..."
  workspace_id  = "a8fc7f8e-2467-4264-9cfb-2449eef8764e"
}