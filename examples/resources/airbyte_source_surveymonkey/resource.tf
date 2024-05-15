resource "airbyte_source_surveymonkey" "my_source_surveymonkey" {
  configuration = {
    credentials = {
      access_token  = "...my_access_token..."
      client_id     = "...my_client_id..."
      client_secret = "...my_client_secret..."
    }
    origin     = "Canada"
    start_date = "2021-01-01T00:00:00Z"
    survey_ids = [
      "...",
    ]
  }
  definition_id = "3a8ae78e-1e53-47d9-aeb6-d5dc1e250f80"
  name          = "Robin Schimmel"
  secret_id     = "...my_secret_id..."
  workspace_id  = "5c3777bc-cfe7-40cf-947e-293c7a4b2d7b"
}