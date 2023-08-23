resource "airbyte_source_twilio_taskrouter" "my_source_twiliotaskrouter" {
  configuration = {
    account_sid = "...my_account_sid..."
    auth_token  = "...my_auth_token..."
    source_type = "twilio-taskrouter"
  }
  name         = "Marta Hodkiewicz"
  secret_id    = "...my_secret_id..."
  workspace_id = "8c99c722-d2bc-40f9-8087-d9caae042dd7"
}