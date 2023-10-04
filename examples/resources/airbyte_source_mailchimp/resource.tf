resource "airbyte_source_mailchimp" "my_source_mailchimp" {
  configuration = {
    campaign_id = "...my_campaign_id..."
    credentials = {
      source_mailchimp_authentication_api_key = {
        apikey = "...my_apikey..."
      }
    }
  }
  name         = "Dr. Everett Keebler"
  secret_id    = "...my_secret_id..."
  workspace_id = "e85198c1-16e7-4265-81ee-6770fa8ec1ba"
}