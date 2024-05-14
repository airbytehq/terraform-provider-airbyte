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
  definition_id = "48f1e4b3-0469-4b6c-a0b3-03cf017cd978"
  name          = "Vanessa Dickens DDS"
  secret_id     = "...my_secret_id..."
  workspace_id  = "e7e9b4aa-bfc5-4ff7-946c-36bb7337bf0b"
}