resource "airbyte_source_twilio_taskrouter" "my_source_twiliotaskrouter" {
  configuration = {
    account_sid = "...my_account_sid..."
    auth_token  = "...my_auth_token..."
  }
  definition_id = "f12901d6-a4d9-4272-b20b-42214f471b20"
  name          = "Renee Schumm"
  secret_id     = "...my_secret_id..."
  workspace_id  = "38b2a3f7-649c-47fe-8f2d-88dd1cee167e"
}