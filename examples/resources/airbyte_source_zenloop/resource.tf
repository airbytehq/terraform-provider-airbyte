resource "airbyte_source_zenloop" "my_source_zenloop" {
  configuration = {
    api_token       = "...my_api_token..."
    date_from       = "2021-10-24T03:30:30Z"
    survey_group_id = "...my_survey_group_id..."
    survey_id       = "...my_survey_id..."
  }
  definition_id = "af6a030f-2320-4a84-882f-eed35fd47126"
  name          = "Darlene Cronin"
  secret_id     = "...my_secret_id..."
  workspace_id  = "78122421-4e97-49a9-b873-ec6ec23f8936"
}