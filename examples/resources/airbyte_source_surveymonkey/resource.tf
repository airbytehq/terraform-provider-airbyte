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
  definition_id = "fbbc8e3e-7db5-4a3e-846f-c1e0fa91f7ef"
  name          = "Winifred Graham"
  secret_id     = "...my_secret_id..."
  workspace_id  = "d7c84461-977a-41b2-b1a5-b009f29606a3"
}