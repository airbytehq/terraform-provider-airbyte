resource "airbyte_source_zenloop" "my_source_zenloop" {
  configuration = {
    api_token       = "...my_api_token..."
    date_from       = "2021-10-24T03:30:30Z"
    survey_group_id = "...my_survey_group_id..."
    survey_id       = "...my_survey_id..."
  }
  definition_id = "0d7b3b35-8aff-4520-ae7c-66512764ede9"
  name          = "Miss Jake Lueilwitz"
  secret_id     = "...my_secret_id..."
  workspace_id  = "cc37ba17-00ba-464d-af2c-d7c8fe5757a3"
}