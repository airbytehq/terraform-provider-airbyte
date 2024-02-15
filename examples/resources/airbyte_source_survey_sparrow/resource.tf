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
  definition_id = "ccb1d39d-dfc6-449b-ba58-a563641fd338"
  name          = "Tony Collier"
  secret_id     = "...my_secret_id..."
  workspace_id  = "56cd88e7-e494-4b9e-9830-e9efbf412cdc"
}