resource "airbyte_source_zenloop" "my_source_zenloop" {
  configuration = {
    api_token       = "...my_api_token..."
    date_from       = "2021-10-24T03:30:30Z"
    survey_group_id = "...my_survey_group_id..."
    survey_id       = "...my_survey_id..."
  }
  definition_id = "fdf3211f-15e0-4b96-bac0-fe887647e848"
  name          = "Pauline Bechtelar"
  secret_id     = "...my_secret_id..."
  workspace_id  = "f14991dd-b8a5-49a6-bc83-fdb6d5a0b32f"
}