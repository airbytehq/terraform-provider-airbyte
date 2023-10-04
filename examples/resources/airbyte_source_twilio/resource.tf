resource "airbyte_source_twilio" "my_source_twilio" {
  configuration = {
    account_sid     = "...my_account_sid..."
    auth_token      = "...my_auth_token..."
    lookback_window = 60
    start_date      = "2020-10-01T00:00:00Z"
  }
  name         = "Deborah Mante Jr."
  secret_id    = "...my_secret_id..."
  workspace_id = "1aad5e5f-9cfb-40d1-a8d3-acce90aeed10"
}