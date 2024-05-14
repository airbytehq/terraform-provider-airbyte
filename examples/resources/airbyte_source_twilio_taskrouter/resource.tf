resource "airbyte_source_twilio_taskrouter" "my_source_twiliotaskrouter" {
  configuration = {
    account_sid = "...my_account_sid..."
    auth_token  = "...my_auth_token..."
  }
  definition_id = "ceb9e0d5-4b08-494b-9d98-fe3f92c06a9a"
  name          = "Cory Daniel Sr."
  secret_id     = "...my_secret_id..."
  workspace_id  = "875abb88-c398-4d79-a660-80f3ecae3cb4"
}