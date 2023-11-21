resource "airbyte_source_twilio_taskrouter" "my_source_twiliotaskrouter" {
  configuration = {
    account_sid = "...my_account_sid..."
    auth_token  = "...my_auth_token..."
  }
  definition_id = "3a6dfd2a-6022-45b2-ac62-eb10f1a0d51f"
  name          = "Guy Rath II"
  secret_id     = "...my_secret_id..."
  workspace_id  = "16cb49da-06c2-439e-baf3-ca2cc2a5392d"
}