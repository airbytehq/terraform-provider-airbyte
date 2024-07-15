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
  definition_id = "fdef541f-06ca-413b-9e89-c1488faa411d"
  name          = "Mack Maggio"
  secret_id     = "...my_secret_id..."
  workspace_id  = "269c9d64-8f0b-4ccd-92e9-5af6ed3c47c1"
}