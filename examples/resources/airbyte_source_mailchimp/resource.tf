resource "airbyte_source_mailchimp" "my_source_mailchimp" {
  configuration = {
    campaign_id = "...my_campaign_id..."
    credentials = {
      apikey    = "...my_apikey..."
      auth_type = "apikey"
    }
    source_type = "mailchimp"
  }
  name         = "Bobbie Wolff"
  workspace_id = "c2f72f88-5009-4049-9160-8207888ec661"
}