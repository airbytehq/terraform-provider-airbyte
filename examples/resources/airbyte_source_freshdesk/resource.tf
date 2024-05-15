resource "airbyte_source_freshdesk" "my_source_freshdesk" {
  configuration = {
    api_key                 = "...my_api_key..."
    domain                  = "myaccount.freshdesk.com"
    lookback_window_in_days = 5
    requests_per_minute     = 10
    start_date              = "2020-12-01T00:00:00Z"
  }
  definition_id = "ac638785-4b69-4c42-a8b9-a534c06fe5a2"
  name          = "Enrique Gutmann"
  secret_id     = "...my_secret_id..."
  workspace_id  = "f211adfc-721d-4d1f-8023-9a929660c93e"
}