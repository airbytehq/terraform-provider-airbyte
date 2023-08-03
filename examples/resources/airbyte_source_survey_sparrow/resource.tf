resource "airbyte_source_survey_sparrow" "my_source_surveysparrow" {
  configuration = {
    access_token = "...my_access_token..."
    region = {
      url_base = "https://eu-api.surveysparrow.com/v3"
    }
    source_type = "survey-sparrow"
    survey_id = [
      "{ \"see\": \"documentation\" }",
    ]
  }
  name         = "Alberta Jakubowski DDS"
  workspace_id = "5768dce7-4240-49a2-95e0-8601489a5f63"
}