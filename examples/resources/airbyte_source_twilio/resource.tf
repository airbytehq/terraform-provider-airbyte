resource "airbyte_source_twilio" "my_source_twilio" {
  configuration = {
    account_sid     = "...my_account_sid..."
    auth_token      = "...my_auth_token..."
    lookback_window = 60
    start_date      = "2020-10-01T00:00:00Z"
  }
  definition_id = "a4b37eb2-05dd-4b7f-9b71-195e07e10364"
  name          = "Angie Jenkins"
  secret_id     = "...my_secret_id..."
  workspace_id  = "d2a60225-b2ac-462e-b10f-1a0d51fb8be0"
}