resource "airbyte_source_twilio" "my_source_twilio" {
  configuration = {
    account_sid     = "...my_account_sid..."
    auth_token      = "...my_auth_token..."
    lookback_window = 60
    start_date      = "2020-10-01T00:00:00Z"
  }
  definition_id = "a1f4e5ac-fef3-4693-ab2c-c34fd78362b3"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "a15d8382-2d59-4454-bd6d-8abe446a9faa"
}