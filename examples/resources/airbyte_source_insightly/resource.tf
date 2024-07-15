resource "airbyte_source_insightly" "my_source_insightly" {
  configuration = {
    start_date = "2021-03-01T00:00:00Z"
    token      = "...my_token..."
  }
  definition_id = "b043ef09-e61b-475b-b267-65eab1ad8429"
  name          = "Eva Reinger"
  secret_id     = "...my_secret_id..."
  workspace_id  = "59bdc8b9-3f80-4b7f-9570-94a97b6356d5"
}