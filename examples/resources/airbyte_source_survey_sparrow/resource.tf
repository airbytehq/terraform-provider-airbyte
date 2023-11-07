resource "airbyte_source_survey_sparrow" "my_source_surveysparrow" {
  configuration = {
    access_token = "...my_access_token..."
    region = {
      eu_based_account = {}
    }
    survey_id = [
      "{ \"see\": \"documentation\" }",
    ]
  }
  name         = "Jermaine White"
  secret_id    = "...my_secret_id..."
  workspace_id = "253a66e5-ad39-4192-9314-c65ed70eb17c"
}