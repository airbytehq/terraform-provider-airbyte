resource "airbyte_source_mailchimp" "my_source_mailchimp" {
  configuration = {
    campaign_id = "...my_campaign_id..."
    credentials = {
      api_key = {
        apikey = "...my_apikey..."
      }
    }
    start_date = "2020-01-01T00:00:00.000Z"
  }
  definition_id = "de8da443-bfaa-4dd2-9a6d-ff6cb6bf32fa"
  name          = "Ken Champlin"
  secret_id     = "...my_secret_id..."
  workspace_id  = "ea4ec87a-affe-4b9e-a290-f7e9f4166b42"
}