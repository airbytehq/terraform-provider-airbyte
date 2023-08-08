resource "airbyte_source_surveymonkey" "my_source_surveymonkey" {
  configuration = {
    credentials = {
      access_token  = "...my_access_token..."
      auth_method   = "oauth2.0"
      client_id     = "...my_client_id..."
      client_secret = "...my_client_secret..."
    }
    origin      = "Europe"
    source_type = "surveymonkey"
    start_date  = "2021-01-01T00:00:00Z"
    survey_ids = [
      "...",
    ]
  }
  name         = "Marcia Berge"
  secret_id    = "...my_secret_id..."
  workspace_id = "73f3a681-c576-48dc-a742-409a215e0860"
}