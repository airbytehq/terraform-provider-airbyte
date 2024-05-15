resource "airbyte_source_shopify" "my_source_shopify" {
  configuration = {
    bulk_window_in_days = 1
    credentials = {
      api_password = {
        api_password = "...my_api_password..."
      }
    }
    fetch_transactions_user_id = false
    shop                       = "my-store"
    start_date                 = "2022-02-12"
  }
  definition_id = "b5fcf365-dcca-4ec2-8e41-cbe1d2ecd015"
  name          = "Carolyn Smith"
  secret_id     = "...my_secret_id..."
  workspace_id  = "f6c56d3c-f89e-4692-9ce0-c7a6ecf05091"
}