resource "airbyte_source_twilio_taskrouter" "my_source_twiliotaskrouter" {
  configuration = {
    account_sid = "...my_account_sid..."
    auth_token  = "...my_auth_token..."
  }
  definition_id = "416cb49d-a06c-4239-a7af-3ca2cc2a5392"
  name          = "Julio Gutmann"
  secret_id     = "...my_secret_id..."
  workspace_id  = "89040904-7267-4ce8-aa32-2e02b7e6dd49"
}