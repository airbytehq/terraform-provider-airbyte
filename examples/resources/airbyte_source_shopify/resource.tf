resource "airbyte_source_shopify" "my_source_shopify" {
  configuration = {
    bulk_window_in_days = 3
    credentials = {
      api_password = {
        api_password = "...my_api_password..."
      }
    }
    fetch_transactions_user_id = false
    shop                       = "my-store.myshopify.com"
    start_date                 = "2020-04-28"
  }
  definition_id = "5c37529a-15c3-4606-aa63-f5716d2b265f"
  name          = "Marguerite Will"
  secret_id     = "...my_secret_id..."
  workspace_id  = "fce7bdd5-81ac-4648-b876-fcad615bcace"
}