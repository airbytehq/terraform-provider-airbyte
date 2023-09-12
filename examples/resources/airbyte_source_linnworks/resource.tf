resource "airbyte_source_linnworks" "my_source_linnworks" {
  configuration = {
    application_id     = "...my_application_id..."
    application_secret = "...my_application_secret..."
    source_type        = "linnworks"
    start_date         = "2022-05-04T07:21:12.859Z"
    token              = "...my_token..."
  }
  name         = "Antonia Muller"
  secret_id    = "...my_secret_id..."
  workspace_id = "cbaaf445-2c48-442c-9b2a-d32dafe81a88"
}