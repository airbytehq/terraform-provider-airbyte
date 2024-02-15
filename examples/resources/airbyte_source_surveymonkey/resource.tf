resource "airbyte_source_surveymonkey" "my_source_surveymonkey" {
  configuration = {
    credentials = {
      access_token  = "...my_access_token..."
      client_id     = "...my_client_id..."
      client_secret = "...my_client_secret..."
    }
    origin     = "Europe"
    start_date = "2021-01-01T00:00:00Z"
    survey_ids = [
      "...",
    ]
  }
  definition_id = "21d89b3d-b558-4d4a-a177-0fe21a7b03b3"
  name          = "Vivian Nader V"
  secret_id     = "...my_secret_id..."
  workspace_id  = "bc4a1418-c27e-42e4-9fbe-84753d48e30c"
}