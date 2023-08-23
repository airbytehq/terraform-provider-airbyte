resource "airbyte_source_sendgrid" "my_source_sendgrid" {
  configuration = {
    apikey      = "...my_apikey..."
    source_type = "sendgrid"
    start_time  = "2020-01-01T01:01:01Z"
  }
  name         = "Dana Sauer"
  secret_id    = "...my_secret_id..."
  workspace_id = "3a2875c6-c1fe-4606-907d-2a9c87ae50c1"
}