resource "airbyte_source_mailchimp" "my_source_mailchimp" {
  configuration = {
    campaign_id = "...my_campaign_id..."
    credentials = {
      source_mailchimp_authentication_api_key = {
        apikey    = "...my_apikey..."
        auth_type = "apikey"
      }
    }
    source_type = "mailchimp"
  }
  name         = "Ms. Tracey D'Amore"
  secret_id    = "...my_secret_id..."
  workspace_id = "88ec6618-3bfe-4965-9eb4-0ec16faf75b0"
}