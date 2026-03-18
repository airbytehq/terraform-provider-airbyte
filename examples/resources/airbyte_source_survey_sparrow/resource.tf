resource "airbyte_source_survey_sparrow" "my_source_surveysparrow" {
  configuration = {
    access_token          = "...my_access_token..."
    additional_properties = "{ \"see\": \"documentation\" }"
    region = {
      eu_based_account = {
        # ...
      }
    }
    survey_id = [
      "{ \"see\": \"documentation\" }"
    ]
  }
  definition_id = "4a4d887b-0f2d-4b33-ab7f-9b01b9072804"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "828bf4a5-ea2e-4e51-999c-c2b98bc413dd"
}