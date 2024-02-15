resource "airbyte_source_twilio" "my_source_twilio" {
  configuration = {
    account_sid     = "...my_account_sid..."
    auth_token      = "...my_auth_token..."
    lookback_window = 60
    start_date      = "2020-10-01T00:00:00Z"
  }
  definition_id = "39e7af3c-a2cc-42a5-b92d-745889040904"
  name          = "Lois Howe"
  secret_id     = "...my_secret_id..."
  workspace_id  = "e86a322e-02b7-4e6d-949d-f5c3592a5dd7"
}