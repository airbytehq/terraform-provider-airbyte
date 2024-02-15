resource "airbyte_source_twilio_taskrouter" "my_source_twiliotaskrouter" {
  configuration = {
    account_sid = "...my_account_sid..."
    auth_token  = "...my_auth_token..."
  }
  definition_id = "ddbd797d-2eb8-494f-9682-a677b1b8dbba"
  name          = "Johnathan Metz"
  secret_id     = "...my_secret_id..."
  workspace_id  = "c2e2ee8b-85f4-41cf-aefd-5ed605e9e4de"
}