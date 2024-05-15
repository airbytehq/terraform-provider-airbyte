resource "airbyte_source_twilio" "my_source_twilio" {
  configuration = {
    account_sid     = "...my_account_sid..."
    auth_token      = "...my_auth_token..."
    lookback_window = 60
    start_date      = "2020-10-01T00:00:00Z"
  }
  definition_id = "4240654f-4782-4740-a2b5-a462428ebc5c"
  name          = "Tamara Weber"
  secret_id     = "...my_secret_id..."
  workspace_id  = "f0c9ce16-ebe8-45fa-a4ae-e8d2bde48eef"
}