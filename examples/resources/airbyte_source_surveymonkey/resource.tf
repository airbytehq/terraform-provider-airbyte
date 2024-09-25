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
  definition_id = "fb370ea7-b020-459e-aef2-3fc13e66cf8a"
  name          = "Phil Mayer"
  secret_id     = "...my_secret_id..."
  workspace_id  = "89f10b55-b793-412b-ab1b-52fdccb22b2f"
}