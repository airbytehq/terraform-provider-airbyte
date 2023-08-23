resource "airbyte_source_linnworks" "my_source_linnworks" {
  configuration = {
    application_id     = "...my_application_id..."
    application_secret = "...my_application_secret..."
    source_type        = "linnworks"
    start_date         = "2022-08-21T08:36:18.969Z"
    token              = "...my_token..."
  }
  name         = "Lana Osinski"
  secret_id    = "...my_secret_id..."
  workspace_id = "5b0b532a-4da3-47cb-aaf4-452c4842c9b2"
}