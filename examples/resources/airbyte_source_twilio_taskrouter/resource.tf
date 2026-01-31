resource "airbyte_source_twilio_taskrouter" "my_source_twiliotaskrouter" {
  configuration = {
    account_sid           = "...my_account_sid..."
    additional_properties = "{ \"see\": \"documentation\" }"
    auth_token            = "...my_auth_token..."
  }
  definition_id = "839041ed-88e0-413d-b429-25471d5f5c26"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "99cdfc99-0fc6-48f6-8ec3-5f8841076de7"
}