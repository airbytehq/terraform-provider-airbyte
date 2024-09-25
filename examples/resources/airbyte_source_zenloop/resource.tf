resource "airbyte_source_zenloop" "my_source_zenloop" {
  configuration = {
    api_token       = "...my_api_token..."
    date_from       = "2021-10-24T03:30:30Z"
    survey_group_id = "...my_survey_group_id..."
    survey_id       = "...my_survey_id..."
  }
  definition_id = "515d7f66-3f4a-4f02-981b-fb7704b3ca57"
  name          = "Mrs. Cassandra Schmidt"
  secret_id     = "...my_secret_id..."
  workspace_id  = "ea5ae8be-9a74-4d2f-a902-70b8919de211"
}