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
  name         = "Benny Williamson"
  secret_id    = "...my_secret_id..."
  workspace_id = "da18a782-2bf9-4589-8e68-61adb55f9e5d"
}