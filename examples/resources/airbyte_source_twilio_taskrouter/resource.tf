resource "airbyte_source_twilio_taskrouter" "my_source_twiliotaskrouter" {
  configuration = {
    account_sid = "...my_account_sid..."
    auth_token  = "...my_auth_token..."
    source_type = "twilio-taskrouter"
  }
  name         = "Dwayne Graham"
  workspace_id = "36b86b3c-df64-415b-8449-f9df13f4eedb"
}