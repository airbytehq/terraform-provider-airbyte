resource "airbyte_source_twilio" "my_source_twilio" {
  configuration = {
    account_sid     = "...my_account_sid..."
    auth_token      = "...my_auth_token..."
    lookback_window = 60
    num_worker      = 1
    start_date      = "2020-10-01T00:00:00Z"
  }
  definition_id = "b9dc6155-672e-42ea-b10d-9f1f1fb95ab1"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "a15d8382-2d59-4454-bd6d-8abe446a9faa"
}