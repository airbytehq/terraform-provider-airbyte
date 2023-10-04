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
  name         = "Jeannie Blick PhD"
  secret_id    = "...my_secret_id..."
  workspace_id = "4fbef253-f33a-4c13-9dc9-0f63794a97d5"
}