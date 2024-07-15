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
  definition_id = "84461977-a1b2-471a-9b00-9f29606a36da"
  name          = "Alejandro Muller"
  secret_id     = "...my_secret_id..."
  workspace_id  = "2aaeb21d-89b3-4db5-98d4-aa1770fe21a7"
}