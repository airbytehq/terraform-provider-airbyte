resource "airbyte_source_shopify" "my_source_shopify" {
  configuration = {
    bulk_window_in_days = 7
    credentials = {
      api_password = {
        api_password = "...my_api_password..."
      }
    }
    fetch_transactions_user_id               = true
    job_checkpoint_interval                  = 6
    job_product_variants_include_pres_prices = false
    job_termination_threshold                = 8
    shop                                     = "my-store.myshopify.com"
    start_date                               = "2020-08-16"
  }
  definition_id = "06400b7b-58d1-43a2-8cf2-b1ade2f4984b"
  name          = "Ed Baumbach MD"
  secret_id     = "...my_secret_id..."
  workspace_id  = "3d2b89b2-6a88-438c-b8d2-27f318d42406"
}