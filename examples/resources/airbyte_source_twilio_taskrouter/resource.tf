resource "airbyte_source_twilio_taskrouter" "my_source_twiliotaskrouter" {
  configuration = {
    account_sid           = "...my_account_sid..."
    additional_properties = "{ \"see\": \"documentation\" }"
    auth_token            = "...my_auth_token..."
  }
  definition_id = "2446953b-b794-429b-a9b3-c821ba992a48"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "99cdfc99-0fc6-48f6-8ec3-5f8841076de7"
}