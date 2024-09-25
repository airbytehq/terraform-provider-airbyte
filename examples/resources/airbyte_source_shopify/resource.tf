resource "airbyte_source_shopify" "my_source_shopify" {
  configuration = {
    bulk_window_in_days = 4
    credentials = {
      api_password = {
        api_password = "...my_api_password..."
      }
    }
    fetch_transactions_user_id               = true
    job_checkpoint_interval                  = 9
    job_product_variants_include_pres_prices = true
    job_termination_threshold                = 5
    shop                                     = "my-store"
    start_date                               = "2022-08-09"
  }
  definition_id = "05259781-2242-414e-979a-97873ec6ec23"
  name          = "Everett McGlynn"
  secret_id     = "...my_secret_id..."
  workspace_id  = "834bb7f2-56aa-42ee-997a-7ac93ce2101f"
}