resource "airbyte_source_mailchimp" "my_source_mailchimp" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    credentials = {
      api_key = {
        apikey = "...my_apikey..."
      }
    }
    data_center = "...my_data_center..."
    start_date  = "2020-01-01T00:00:00.000Z"
  }
  definition_id = "b03a9f3e-22a5-11eb-adc1-0242ac120002"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "c255ad32-1802-4521-bc9b-94b258ea8fe1"
}