resource "airbyte_source_twilio_taskrouter" "my_source_twiliotaskrouter" {
  configuration = {
    account_sid = "...my_account_sid..."
    auth_token  = "...my_auth_token..."
  }
  name         = "Erik Prohaska"
  secret_id    = "...my_secret_id..."
  workspace_id = "82d54ce5-98cc-459e-b952-f06231c57fd8"
}