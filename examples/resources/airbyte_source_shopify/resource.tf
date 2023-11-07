resource "airbyte_source_shopify" "my_source_shopify" {
  configuration = {
    credentials = {
      api_password = {
        api_password = "...my_api_password..."
      }
    }
    shop       = "my-store.myshopify.com"
    start_date = "2022-06-08"
  }
  name         = "Christy Kuhn"
  secret_id    = "...my_secret_id..."
  workspace_id = "0c47c0f9-ce33-4c0f-a94c-11e4e993d294"
}