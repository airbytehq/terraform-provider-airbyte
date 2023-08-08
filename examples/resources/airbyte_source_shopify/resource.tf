resource "airbyte_source_shopify" "my_source_shopify" {
  configuration = {
    credentials = {
      source_shopify_shopify_authorization_method_api_password = {
        api_password = "...my_api_password..."
        auth_method  = "api_password"
      }
    }
    shop        = "...my_shop..."
    source_type = "shopify"
    start_date  = "2021-01-01"
  }
  name         = "Alfred Hoppe"
  secret_id    = "...my_secret_id..."
  workspace_id = "512ab252-1b9f-42e0-b246-7b8a40bc05fa"
}