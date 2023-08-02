resource "airbyte_source_woocommerce" "my_source_woocommerce" {
  configuration = {
    api_key     = "...my_api_key..."
    api_secret  = "...my_api_secret..."
    shop        = "...my_shop..."
    source_type = "woocommerce"
    start_date  = "2021-01-01"
  }
  name         = "Katherine Ondricka"
  secret_id    = "...my_secretId..."
  workspace_id = "46bca110-6fe9-465b-b11d-08cf88ec9f7b"
}