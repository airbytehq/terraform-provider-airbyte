resource "airbyte_source_okta" "my_source_okta" {
  configuration = {
    credentials = {
      source_okta_authorization_method_api_token = {
        api_token = "...my_api_token..."
      }
    }
    domain     = "...my_domain..."
    start_date = "2022-07-22T00:00:00Z"
  }
  name         = "Dr. Gilberto Koss"
  secret_id    = "...my_secret_id..."
  workspace_id = "dea586a0-9709-4edc-af2c-4357e7eb149e"
}