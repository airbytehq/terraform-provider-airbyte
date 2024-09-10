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
  definition_id = "be3b1f29-0447-4757-b847-65c77418014d"
  name          = "Tabitha D'Amore"
  secret_id     = "...my_secret_id..."
  workspace_id  = "651b77f9-fe0e-45e5-b386-d0ac5af3c655"
}