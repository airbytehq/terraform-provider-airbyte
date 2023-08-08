resource "airbyte_source_twilio" "my_source_twilio" {
  configuration = {
    account_sid     = "...my_account_sid..."
    auth_token      = "...my_auth_token..."
    lookback_window = 60
    source_type     = "twilio"
    start_date      = "2020-10-01T00:00:00Z"
  }
  name         = "Bradley Goodwin"
  secret_id    = "...my_secret_id..."
  workspace_id = "f5c84383-6b86-4b3c-9f64-15b0449f9df1"
}