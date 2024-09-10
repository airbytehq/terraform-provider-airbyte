resource "airbyte_source_twilio" "my_source_twilio" {
  configuration = {
    account_sid     = "...my_account_sid..."
    auth_token      = "...my_auth_token..."
    lookback_window = 60
    start_date      = "2020-10-01T00:00:00Z"
  }
  definition_id = "214e979a-9787-43ec-aec2-3f8936834bb7"
  name          = "Howard Herman"
  secret_id     = "...my_secret_id..."
  workspace_id  = "a2eed97a-7ac9-43ce-a101-f692eff8de56"
}