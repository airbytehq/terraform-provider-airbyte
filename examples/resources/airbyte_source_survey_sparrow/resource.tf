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
  definition_id = "bc290ef0-0ad5-4372-a56f-e50a2e7cfe6f"
  name          = "Danielle Nitzsche"
  secret_id     = "...my_secret_id..."
  workspace_id  = "65c56f5f-a677-48e4-8b91-c615d128040b"
}