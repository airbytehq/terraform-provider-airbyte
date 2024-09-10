resource "airbyte_source_fleetio" "my_source_fleetio" {
  configuration = {
    account_token = "...my_account_token..."
    api_key       = "...my_api_key..."
  }
  definition_id = "51cef20d-e4cf-4c33-ab42-c84cd8bc6076"
  name          = "Julio Bode"
  secret_id     = "...my_secret_id..."
  workspace_id  = "bf0cfd3a-ed54-4ef2-8d0d-e80e3db90502"
}