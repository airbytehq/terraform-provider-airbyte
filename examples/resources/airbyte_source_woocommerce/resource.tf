resource "airbyte_source_woocommerce" "my_source_woocommerce" {
  configuration = {
    api_key     = "...my_api_key..."
    api_secret  = "...my_api_secret..."
    shop        = "...my_shop..."
    source_type = "woocommerce"
    start_date  = "2021-01-01"
  }
  name         = "Dr. Mattie Nader"
  secret_id    = "...my_secret_id..."
  workspace_id = "57b7d03a-1480-4f8d-a30f-069d810618d9"
}