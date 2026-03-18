resource "airbyte_source_fleetio" "my_source_fleetio" {
  configuration = {
    account_token         = "...my_account_token..."
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
  }
  definition_id = "13a7652d-1d94-4033-931a-613d22d3cbb3"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "5a0a4576-a851-425d-8889-03b3cd33c373"
}