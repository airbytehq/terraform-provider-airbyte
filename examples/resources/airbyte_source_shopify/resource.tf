resource "airbyte_source_shopify" "my_source_shopify" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    bulk_window_in_days   = 30
    credentials = {
      api_password = {
        api_password = "...my_api_password..."
      }
    }
    fetch_transactions_user_id               = false
    fulfillment_orders_include_closed        = false
    job_checkpoint_interval                  = 100000
    job_product_variants_include_pres_prices = true
    job_termination_threshold                = 7200
    shop                                     = "my-store"
    start_date                               = "2020-01-01"
  }
  definition_id = "9da77001-af33-4bcd-be46-6252bf9342b9"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "de6ea042-7883-4cc3-9786-89e9d969aa09"
}