resource "airbyte_source_twilio_taskrouter" "my_source_twiliotaskrouter" {
  configuration = {
    account_sid = "...my_account_sid..."
    auth_token  = "...my_auth_token..."
  }
  definition_id = "1ea7992c-d63d-4338-9efe-3f7d5a433d30"
  name          = "Pablo Gutmann"
  secret_id     = "...my_secret_id..."
  workspace_id  = "9f684d9a-b345-4ef3-983c-b2e52a86adbb"
}