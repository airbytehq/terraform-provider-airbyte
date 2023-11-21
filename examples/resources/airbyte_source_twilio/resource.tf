resource "airbyte_source_twilio" "my_source_twilio" {
  configuration = {
    account_sid     = "...my_account_sid..."
    auth_token      = "...my_auth_token..."
    lookback_window = 60
    start_date      = "2020-10-01T00:00:00Z"
  }
  definition_id = "83cb2e52-a86a-4dbb-97c5-cbe7ccff9d07"
  name          = "Leslie Kihn"
  secret_id     = "...my_secret_id..."
  workspace_id  = "a4b37eb2-05dd-4b7f-9b71-195e07e10364"
}