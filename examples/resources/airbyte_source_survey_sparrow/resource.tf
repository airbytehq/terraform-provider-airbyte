resource "airbyte_source_survey_sparrow" "my_source_surveysparrow" {
  configuration = {
    access_token          = "...my_access_token..."
    additional_properties = "{ \"see\": \"documentation\" }"
    region = {
      eu_based_account = {
        # ...
      }
      global_account = {
        # ...
      }
    }
    survey_id = [
      "{ \"see\": \"documentation\" }"
    ]
  }
  definition_id = "48652e9c-9d9f-4b9a-bf9d-0a1aba720b52"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "828bf4a5-ea2e-4e51-999c-c2b98bc413dd"
}