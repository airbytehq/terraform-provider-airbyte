resource "airbyte_source_shopify" "my_source_shopify" {
  configuration = {
    bulk_window_in_days = 10
    credentials = {
      api_password = {
        api_password = "...my_api_password..."
      }
    }
    fetch_transactions_user_id = false
    job_termination_threshold  = 0
    shop                       = "my-store.myshopify.com"
    start_date                 = "2022-06-27"
  }
  definition_id = "db2aae6c-20ac-49c1-9db3-e1c883c55acc"
  name          = "Glen Schinner"
  secret_id     = "...my_secret_id..."
  workspace_id  = "529a15c3-6062-4a63-b571-6d2b265f2af5"
}