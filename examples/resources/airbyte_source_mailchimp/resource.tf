resource "airbyte_source_mailchimp" "my_source_mailchimp" {
  configuration = {
    credentials = {
      api_key = {
        apikey = "...my_apikey..."
      }
    }
    start_date = "2020-01-01T00:00:00.000Z"
  }
  definition_id = "9bebd7b1-c88a-4dd4-aa37-8172eb64f49e"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "c255ad32-1802-4521-bc9b-94b258ea8fe1"
}