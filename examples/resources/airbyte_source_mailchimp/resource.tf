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
  definition_id = "6c0fac14-03cf-4d91-9cc5-3ae1f1c37b35"
  name          = "Tasha Reilly"
  secret_id     = "...my_secret_id..."
  workspace_id  = "981c89f9-63f1-4e61-a4cc-8788ff77a589"
}