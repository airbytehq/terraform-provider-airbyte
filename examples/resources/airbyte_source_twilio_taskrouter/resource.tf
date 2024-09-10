resource "airbyte_source_twilio_taskrouter" "my_source_twiliotaskrouter" {
  configuration = {
    account_sid = "...my_account_sid..."
    auth_token  = "...my_auth_token..."
  }
  definition_id = "50472830-aace-4290-97b3-b358aff5206e"
  name          = "Angelica Huels"
  secret_id     = "...my_secret_id..."
  workspace_id  = "12764ede-9cd8-419e-8c37-ba1700ba64da"
}