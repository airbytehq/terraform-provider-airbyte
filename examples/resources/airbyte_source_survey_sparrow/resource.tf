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
  name         = "Hugo Kovacek"
  secret_id    = "...my_secret_id..."
  workspace_id = "f02449d8-6f4b-4b20-be5d-911cbfe749ca"
}