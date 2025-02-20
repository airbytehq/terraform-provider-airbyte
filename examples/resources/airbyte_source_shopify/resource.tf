resource "airbyte_source_shopify" "my_source_shopify" {
  configuration = {
    bulk_window_in_days = 4
    credentials = {
      api_password = {
        api_password = "...my_api_password..."
      }
      o_auth20 = {
        access_token  = "...my_access_token..."
        client_id     = "...my_client_id..."
        client_secret = "...my_client_secret..."
      }
    }
    fetch_transactions_user_id               = true
    job_checkpoint_interval                  = 484517
    job_product_variants_include_pres_prices = true
    job_termination_threshold                = 5282
    shop                                     = "my-store"
    start_date                               = "2021-05-19"
  }
  definition_id = "1a8f2c45-b7ec-4db1-8680-d2e228b3d43e"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "de6ea042-7883-4cc3-9786-89e9d969aa09"
}