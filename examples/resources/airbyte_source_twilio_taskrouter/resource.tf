resource "airbyte_source_twilio_taskrouter" "my_source_twiliotaskrouter" {
  configuration = {
    account_sid = "...my_account_sid..."
    auth_token  = "...my_auth_token..."
    source_type = "twilio-taskrouter"
  }
  name         = "Cathy Ratke"
  secret_id    = "...my_secret_id..."
  workspace_id = "6065c0ef-a6f9-43b9-8a1b-8c95be1254b7"
}