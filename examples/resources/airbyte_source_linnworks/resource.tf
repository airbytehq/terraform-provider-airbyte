resource "airbyte_source_linnworks" "my_source_linnworks" {
  configuration = {
    application_id     = "...my_application_id..."
    application_secret = "...my_application_secret..."
    start_date         = "2021-11-10T02:43:35.586Z"
    token              = "...my_token..."
  }
  definition_id = "5c663b6d-13c6-4e3b-bb93-bd413d75c669"
  name          = "Molly Huels"
  secret_id     = "...my_secret_id..."
  workspace_id  = "2ef16650-e4c3-4120-977a-566ac796fdac"
}