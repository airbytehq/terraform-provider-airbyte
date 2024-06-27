resource "airbyte_source_mailchimp" "my_source_mailchimp" {
  configuration = {
    credentials = {
      api_key = {
        apikey = "...my_apikey..."
      }
    }
    data_center = "...my_data_center..."
    start_date  = "2020-01-01T00:00:00.000Z"
  }
  definition_id = "b4c473e8-c7bd-4591-9174-a553fda41daf"
  name          = "Agnes Cronin"
  secret_id     = "...my_secret_id..."
  workspace_id  = "f51c5fa5-2e0c-46c0-8c93-e76e9fdef541"
}