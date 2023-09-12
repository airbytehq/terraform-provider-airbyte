resource "airbyte_source_sendgrid" "my_source_sendgrid" {
  configuration = {
    apikey      = "...my_apikey..."
    source_type = "sendgrid"
    start_time  = "2020-01-01T01:01:01Z"
  }
  name         = "Shari Pfannerstill"
  secret_id    = "...my_secret_id..."
  workspace_id = "41c57d1f-edc2-4050-938d-c3ce185472f9"
}