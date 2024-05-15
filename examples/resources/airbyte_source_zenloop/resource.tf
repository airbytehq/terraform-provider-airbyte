resource "airbyte_source_zenloop" "my_source_zenloop" {
  configuration = {
    api_token       = "...my_api_token..."
    date_from       = "2021-10-24T03:30:30Z"
    survey_group_id = "...my_survey_group_id..."
    survey_id       = "...my_survey_id..."
  }
  definition_id = "f9e67bad-f74d-423a-87a4-2abf6ae57802"
  name          = "Neal O'Kon"
  secret_id     = "...my_secret_id..."
  workspace_id  = "1998eac7-526c-40e6-8d41-f29478bd831a"
}