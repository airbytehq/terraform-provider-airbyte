resource "airbyte_source_twilio" "my_source_twilio" {
  configuration = {
    account_sid     = "...my_account_sid..."
    auth_token      = "...my_auth_token..."
    lookback_window = 60
    source_type     = "twilio"
    start_date      = "2020-10-01T00:00:00Z"
  }
  name         = "Andre Sporer"
  secret_id    = "...my_secret_id..."
  workspace_id = "9e5635b3-3bc0-4f97-8c42-fc9f4844225e"
}