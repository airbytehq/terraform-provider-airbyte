resource "airbyte_source_shopify" "my_source_shopify" {
  configuration = {
    credentials = {
      source_shopify_shopify_authorization_method_api_password = {
        api_password = "...my_api_password..."
        auth_method  = "api_password"
      }
    }
    shop        = "my-store"
    source_type = "shopify"
    start_date  = "2021-01-01"
  }
  name         = "Rhonda Gislason"
  secret_id    = "...my_secret_id..."
  workspace_id = "619039da-cd38-4ed0-9c67-1dc7f1e3af15"
}