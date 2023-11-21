resource "airbyte_source_mailchimp" "my_source_mailchimp" {
  configuration = {
    campaign_id = "...my_campaign_id..."
    credentials = {
      api_key = {
        apikey = "...my_apikey..."
      }
    }
  }
  definition_id = "bd591517-4a55-43fd-a41d-af7626ef51c5"
  name          = "Lyle Haley"
  secret_id     = "...my_secret_id..."
  workspace_id  = "0c6c0cc9-3e76-4e9f-9ef5-41f06ca13b1e"
}