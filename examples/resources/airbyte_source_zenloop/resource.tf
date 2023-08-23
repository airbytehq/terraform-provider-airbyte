resource "airbyte_source_zenloop" "my_source_zenloop" {
  configuration = {
    api_token       = "...my_api_token..."
    date_from       = "2021-10-24T03:30:30Z"
    source_type     = "zenloop"
    survey_group_id = "...my_survey_group_id..."
    survey_id       = "...my_survey_id..."
  }
  name         = "Ms. Emma Rodriguez Jr."
  secret_id    = "...my_secret_id..."
  workspace_id = "688deebe-f897-4f3d-90cc-d33f11b3e4e0"
}