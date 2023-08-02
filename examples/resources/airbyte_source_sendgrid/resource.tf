resource "airbyte_source_sendgrid" "my_source_sendgrid" {
  configuration = {
    apikey      = "...my_apikey..."
    source_type = "sendgrid"
    start_time  = "2020-01-01T01:01:01.000001Z"
  }
  name         = "Horace Schumm"
  secret_id    = "...my_secretId..."
  workspace_id = "f7d67ca8-4ad9-49b4-9d61-243531870cf6"
}