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
  definition_id = "6dac9959-2aae-4b21-989b-3db558d4aa17"
  name          = "Margaret Wiza"
  secret_id     = "...my_secret_id..."
  workspace_id  = "1a7b03b3-15af-419b-84a1-418c27e2e49f"
}