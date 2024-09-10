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
  definition_id = "f1f04aee-bc30-46c4-b339-7c20475faade"
  name          = "Wilbur Gleichner DVM"
  secret_id     = "...my_secret_id..."
  workspace_id  = "413dd760-cc3a-4e1d-b75e-e978f160f457"
}