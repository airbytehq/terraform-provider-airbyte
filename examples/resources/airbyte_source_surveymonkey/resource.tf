resource "airbyte_source_surveymonkey" "my_source_surveymonkey" {
  configuration = {
    credentials = {
      access_token  = "...my_access_token..."
      client_id     = "...my_client_id..."
      client_secret = "...my_client_secret..."
    }
    origin     = "USA"
    start_date = "2021-01-01T00:00:00Z"
    survey_ids = [
      "...",
    ]
  }
  definition_id = "147e293c-7a4b-42d7-bbc2-90ef00ad5372"
  name          = "Renee Howe"
  secret_id     = "...my_secret_id..."
  workspace_id  = "50a2e7cf-e6f3-44ac-865c-56f5fa6778e4"
}