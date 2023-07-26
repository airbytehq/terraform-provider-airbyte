resource "airbyte_source_twilio" "my_source_twilio" {
  configuration = {
    account_sid     = "...my_account_sid..."
    auth_token      = "...my_auth_token..."
    lookback_window = 60
    source_type     = "twilio"
    start_date      = "2020-10-01T00:00:00Z"
  }
  name         = "Lucy Gutkowski"
  workspace_id = "d7b78673-e13a-412a-ab99-2494594487f5"
}