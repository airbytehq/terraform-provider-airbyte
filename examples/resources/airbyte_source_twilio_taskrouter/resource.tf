resource "airbyte_source_twilio_taskrouter" "my_source_twiliotaskrouter" {
  configuration = {
    account_sid = "...my_account_sid..."
    auth_token  = "...my_auth_token..."
  }
  definition_id = "60225b2a-c62e-4b10-b1a0-d51fb8be0416"
  name          = "Rudolph Gerhold"
  secret_id     = "...my_secret_id..."
  workspace_id  = "a06c239e-7af3-4ca2-8c2a-5392d7458890"
}