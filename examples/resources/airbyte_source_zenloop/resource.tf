resource "airbyte_source_zenloop" "my_source_zenloop" {
  configuration = {
    api_token       = "...my_api_token..."
    date_from       = "2021-10-24T03:30:30Z"
    survey_group_id = "...my_survey_group_id..."
    survey_id       = "...my_survey_id..."
  }
  definition_id = "f1e4c7f6-db5c-4035-981f-d35ab4998794"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "6f98c01a-6d57-4ace-a7b8-04fd27c3fbd5"
}