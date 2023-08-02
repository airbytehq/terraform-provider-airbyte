resource "airbyte_source_linnworks" "my_source_linnworks" {
  configuration = {
    application_id     = "...my_application_id..."
    application_secret = "...my_application_secret..."
    source_type        = "linnworks"
    start_date         = "2022-03-30T06:35:02.930Z"
    token              = "...my_token..."
  }
  name         = "Carole Watsica"
  workspace_id = "15ceb4d6-e1ea-4e0f-b5ae-df2acab58b99"
}