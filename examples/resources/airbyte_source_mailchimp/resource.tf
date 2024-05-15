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
  definition_id = "63dc7b7f-8b16-4c61-a7f1-e8f0042f9221"
  name          = "Jeannette Heidenreich"
  secret_id     = "...my_secret_id..."
  workspace_id  = "f204e6a7-7564-47eb-abab-c0f9b18b2eaf"
}