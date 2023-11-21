resource "airbyte_source_linnworks" "my_source_linnworks" {
  configuration = {
    application_id     = "...my_application_id..."
    application_secret = "...my_application_secret..."
    start_date         = "2022-09-13T03:04:12.490Z"
    token              = "...my_token..."
  }
  definition_id = "2f92210b-5c8f-4204-a6a7-75647eb6babc"
  name          = "Melba McDermott IV"
  secret_id     = "...my_secret_id..."
  workspace_id  = "b2eafdc4-53fb-46a0-992c-447712b4a020"
}