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
  definition_id = "d128040b-a03e-4b3c-8afc-c3c8fa6eafbb"
  name          = "Alberto Tillman"
  secret_id     = "...my_secret_id..."
  workspace_id  = "7db5a3e4-46fc-41e0-ba91-f7ef5f462d7c"
}