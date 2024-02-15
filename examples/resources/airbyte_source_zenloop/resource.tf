resource "airbyte_source_zenloop" "my_source_zenloop" {
  configuration = {
    api_token       = "...my_api_token..."
    date_from       = "2021-10-24T03:30:30Z"
    survey_group_id = "...my_survey_group_id..."
    survey_id       = "...my_survey_id..."
  }
  definition_id = "312d0cbf-e39d-4f03-a297-d6f5cf39b34f"
  name          = "Ronnie Lynch"
  secret_id     = "...my_secret_id..."
  workspace_id  = "42198f32-822b-482a-959e-bc2b7c1d3540"
}