resource "airbyte_source_fleetio" "my_source_fleetio" {
  configuration = {
    account_token         = "...my_account_token..."
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
  }
  definition_id = "f507da2d-722f-47e1-be23-e70fb45cf16a"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "5a0a4576-a851-425d-8889-03b3cd33c373"
}