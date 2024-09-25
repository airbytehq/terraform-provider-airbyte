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
  definition_id = "47f127a6-aa10-4ba7-afbf-e0de8798ad00"
  name          = "Micheal DuBuque"
  secret_id     = "...my_secret_id..."
  workspace_id  = "8a627c91-41ac-48dc-b207-c06da07742c2"
}