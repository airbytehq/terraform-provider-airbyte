resource "airbyte_source_flexmail" "my_source_flexmail" {
  configuration = {
    account_id            = "...my_account_id..."
    additional_properties = "{ \"see\": \"documentation\" }"
    personal_access_token = "...my_personal_access_token..."
  }
  definition_id = "2292273e-92fb-4a2a-9d00-148222335f72"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "b956d506-2b8b-4129-b92e-a8d074f22591"
}