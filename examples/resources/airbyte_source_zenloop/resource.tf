resource "airbyte_source_zenloop" "my_source_zenloop" {
  configuration = {
    api_token       = "...my_api_token..."
    date_from       = "2021-10-24T03:30:30Z"
    survey_group_id = "...my_survey_group_id..."
    survey_id       = "...my_survey_id..."
  }
  definition_id = "30aace29-0d7b-43b3-98af-f5206e7c6651"
  name          = "Colleen Hodkiewicz"
  secret_id     = "...my_secret_id..."
  workspace_id  = "de9cd819-ecc3-47ba-9700-ba64daf2cd7c"
}