resource "airbyte_source_twilio_taskrouter" "my_source_twiliotaskrouter" {
  configuration = {
    account_sid = "...my_account_sid..."
    auth_token  = "...my_auth_token..."
    source_type = "twilio-taskrouter"
  }
  name         = "Marta Graham"
  secret_id    = "...my_secret_id..."
  workspace_id = "dbe78bf6-0682-4589-8ea7-63d5c72795b7"
}