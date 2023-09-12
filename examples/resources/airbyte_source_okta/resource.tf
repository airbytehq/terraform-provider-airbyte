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
  name         = "Mr. Emmett Heidenreich"
  secret_id    = "...my_secret_id..."
  workspace_id = "6d71cffb-d0eb-474b-8421-953b44bd3c43"
}