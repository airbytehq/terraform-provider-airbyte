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
  definition_id = "8fc026c7-cc4e-4afd-ab4c-1bcaf66c1286"
  name          = "Jerald Mertz"
  secret_id     = "...my_secret_id..."
  workspace_id  = "d6138285-42bb-437a-858f-acd1771a16ff"
}