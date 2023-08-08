resource "airbyte_source_zenloop" "my_source_zenloop" {
  configuration = {
    api_token       = "...my_api_token..."
    date_from       = "2021-10-24T03:30:30Z"
    source_type     = "zenloop"
    survey_group_id = "...my_survey_group_id..."
    survey_id       = "...my_survey_id..."
  }
  name         = "Kyle Reichert"
  secret_id    = "...my_secret_id..."
  workspace_id = "3d382dbe-c75c-468c-a065-9468ce304d88"
}