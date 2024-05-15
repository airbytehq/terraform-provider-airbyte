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
  definition_id = "eca93a8a-e78e-41e5-b7d9-6eb6d5dc1e25"
  name          = "Dr. Marta Lindgren"
  secret_id     = "...my_secret_id..."
  workspace_id  = "c595c377-7bcc-4fe7-8cf1-47e293c7a4b2"
}