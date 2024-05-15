resource "airbyte_source_shopify" "my_source_shopify" {
  configuration = {
    bulk_window_in_days = 1
    credentials = {
      api_password = {
        api_password = "...my_api_password..."
      }
    }
    fetch_transactions_user_id = false
    shop                       = "my-store.myshopify.com"
    start_date                 = "2022-06-25"
  }
  definition_id = "d9d00175-3384-4297-b372-c40ec9291353"
  name          = "Jackie Halvorson"
  secret_id     = "...my_secret_id..."
  workspace_id  = "bcc34d38-9bbf-45d2-8f5b-1164e1dc4a01"
}