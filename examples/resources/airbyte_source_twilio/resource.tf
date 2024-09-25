resource "airbyte_source_twilio" "my_source_twilio" {
  configuration = {
    account_sid     = "...my_account_sid..."
    auth_token      = "...my_auth_token..."
    lookback_window = 60
    start_date      = "2020-10-01T00:00:00Z"
  }
  definition_id = "23a3cf02-bc52-434b-8593-a96f3714908f"
  name          = "Dixie Gorczany"
  secret_id     = "...my_secret_id..."
  workspace_id  = "87082bd5-be86-4662-8ddb-59a0cab9b4c3"
}