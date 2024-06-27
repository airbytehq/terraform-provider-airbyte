resource "airbyte_source_linnworks" "my_source_linnworks" {
  configuration = {
    application_id     = "...my_application_id..."
    application_secret = "...my_application_secret..."
    start_date         = "2021-09-13T06:35:49.884Z"
    token              = "...my_token..."
  }
  definition_id = "167f1e8f-0042-4f92-a10b-5c8f204e6a77"
  name          = "Gertrude Gutkowski"
  secret_id     = "...my_secret_id..."
  workspace_id  = "b6babc0f-9b18-4b2e-afdc-453fb6a0192c"
}