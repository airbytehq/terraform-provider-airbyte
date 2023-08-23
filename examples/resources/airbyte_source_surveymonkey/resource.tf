resource "airbyte_source_surveymonkey" "my_source_surveymonkey" {
  configuration = {
    credentials = {
      access_token  = "...my_access_token..."
      auth_method   = "oauth2.0"
      client_id     = "...my_client_id..."
      client_secret = "...my_client_secret..."
    }
    origin      = "USA"
    source_type = "surveymonkey"
    start_date  = "2021-01-01T00:00:00Z"
    survey_ids = [
      "...",
    ]
  }
  name         = "Cecil Wintheiser"
  secret_id    = "...my_secret_id..."
  workspace_id = "b20fe5d9-11cb-4fe7-89ca-f45a27f69e2c"
}