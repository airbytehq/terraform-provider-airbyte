resource "airbyte_source_sendgrid" "my_source_sendgrid" {
  configuration = {
    apikey     = "...my_apikey..."
    start_time = "2020-01-01T01:01:01Z"
  }
  name         = "Adrienne Leannon"
  secret_id    = "...my_secret_id..."
  workspace_id = "fb0cb9d8-dfc2-47a8-872c-3eb5dc55714d"
}