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
  definition_id = "4b91c615-d128-4040-ba03-eb3c0afcc3c8"
  name          = "Gerard Kerluke"
  secret_id     = "...my_secret_id..."
  workspace_id  = "fbbc8e3e-7db5-4a3e-846f-c1e0fa91f7ef"
}