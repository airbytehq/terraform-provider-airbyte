resource "airbyte_source_zenloop" "my_source_zenloop" {
  configuration = {
    api_token       = "...my_api_token..."
    date_from       = "2021-10-24T03:30:30Z"
    source_type     = "zenloop"
    survey_group_id = "...my_survey_group_id..."
    survey_id       = "...my_survey_id..."
  }
  name         = "Ricardo Champlin"
  secret_id    = "...my_secret_id..."
  workspace_id = "7261fb0c-58d2-47b5-9996-b5b4b50eef71"
}