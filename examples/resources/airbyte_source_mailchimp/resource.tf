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
  name         = "Faye Dicki"
  secret_id    = "...my_secret_id..."
  workspace_id = "aa69cd5f-bcf7-49da-98a7-822bf95894e6"
}