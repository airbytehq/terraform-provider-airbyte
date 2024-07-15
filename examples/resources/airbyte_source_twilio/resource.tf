resource "airbyte_source_twilio" "my_source_twilio" {
  configuration = {
    account_sid     = "...my_account_sid..."
    auth_token      = "...my_auth_token..."
    lookback_window = 60
    start_date      = "2020-10-01T00:00:00Z"
  }
  definition_id = "a86adbb5-7c5c-4be7-8cff-9d0724747a4b"
  name          = "Marian Torphy"
  secret_id     = "...my_secret_id..."
  workspace_id  = "05ddb7f1-b711-495e-87e1-03643a6dfd2a"
}