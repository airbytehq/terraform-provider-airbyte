resource "airbyte_source_linnworks" "my_source_linnworks" {
  configuration = {
    application_id     = "...my_application_id..."
    application_secret = "...my_application_secret..."
    source_type        = "linnworks"
    start_date         = "2022-09-01T15:55:01.348Z"
    token              = "...my_token..."
  }
  name         = "Percy Schuster"
  secret_id    = "...my_secretId..."
  workspace_id = "acab58b9-91c9-426d-9b58-9461e7421cbe"
}