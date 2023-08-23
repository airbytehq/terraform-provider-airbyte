resource "airbyte_source_survey_sparrow" "my_source_surveysparrow" {
  configuration = {
    access_token = "...my_access_token..."
    region = {
      source_survey_sparrow_base_url_eu_based_account = {
        url_base = "https://eu-api.surveysparrow.com/v3"
      }
    }
    source_type = "survey-sparrow"
    survey_id = [
      "{ \"see\": \"documentation\" }",
    ]
  }
  name         = "Merle Keebler Jr."
  secret_id    = "...my_secret_id..."
  workspace_id = "e9db3ad4-c6b0-4310-8d9c-337473082b94"
}