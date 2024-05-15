resource "airbyte_source_twilio" "my_source_twilio" {
  configuration = {
    account_sid     = "...my_account_sid..."
    auth_token      = "...my_auth_token..."
    lookback_window = 60
    start_date      = "2020-10-01T00:00:00Z"
  }
  definition_id = "b9e0d54b-0894-4bdd-98fe-3f92c06a9aa7"
  name          = "Jo Bayer"
  secret_id     = "...my_secret_id..."
  workspace_id  = "75abb88c-398d-4796-a608-0f3ecae3cb49"
}