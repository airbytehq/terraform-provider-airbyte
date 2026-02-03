resource "airbyte_source_surveymonkey" "my_source_surveymonkey" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    credentials = {
      access_token  = "...my_access_token..."
      client_id     = "...my_client_id..."
      client_secret = "...my_client_secret..."
    }
    origin     = "Canada"
    start_date = "2021-01-01T00:00:00Z"
    survey_ids = [
      "..."
    ]
  }
  definition_id = "8788e4f2-cdf7-4f67-bc21-9b9f4fffbea1"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "a08cdcf1-32b9-4e64-bdd5-c4df18b0d751"
}