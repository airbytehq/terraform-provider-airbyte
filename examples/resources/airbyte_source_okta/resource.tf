resource "airbyte_source_okta" "my_source_okta" {
  configuration = {
    credentials = {
      source_okta_authorization_method_api_token = {
        api_token = "...my_api_token..."
        auth_type = "api_token"
      }
    }
    domain      = "...my_domain..."
    source_type = "okta"
    start_date  = "2022-07-22T00:00:00Z"
  }
  name         = "Danielle Bruen"
  secret_id    = "...my_secret_id..."
  workspace_id = "c2f56e85-da78-432e-abd6-17c3b0d51a44"
}