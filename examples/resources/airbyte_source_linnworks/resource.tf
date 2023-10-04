resource "airbyte_source_linnworks" "my_source_linnworks" {
  configuration = {
    application_id     = "...my_application_id..."
    application_secret = "...my_application_secret..."
    start_date         = "2022-05-21T06:55:58.730Z"
    token              = "...my_token..."
  }
  name         = "Roosevelt Dibbert"
  secret_id    = "...my_secret_id..."
  workspace_id = "2cb41644-2d85-4f5b-a382-e70e18a8172f"
}