resource "airbyte_source_zenloop" "my_source_zenloop" {
  configuration = {
    api_token       = "...my_api_token..."
    date_from       = "2021-10-24T03:30:30Z"
    survey_group_id = "...my_survey_group_id..."
    survey_id       = "...my_survey_id..."
  }
  definition_id = "cd819ecc-37ba-4170-8ba6-4daf2cd7c8fe"
  name          = "Delores Hamill"
  secret_id     = "...my_secret_id..."
  workspace_id  = "306443a7-5bcf-44e2-a137-8db01d76f7dd"
}