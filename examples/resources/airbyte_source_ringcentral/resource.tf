resource "airbyte_source_ringcentral" "my_source_ringcentral" {
  configuration = {
    account_id            = "...my_account_id..."
    additional_properties = "{ \"see\": \"documentation\" }"
    auth_token            = "...my_auth_token..."
    extension_id          = "...my_extension_id..."
  }
  definition_id = "d12deee5-70e6-4aef-84bf-2ad9839a89fe"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "de297108-f213-4561-aae1-0a226f944367"
}