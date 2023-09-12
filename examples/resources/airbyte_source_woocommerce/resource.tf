resource "airbyte_source_woocommerce" "my_source_woocommerce" {
  configuration = {
    api_key     = "...my_api_key..."
    api_secret  = "...my_api_secret..."
    shop        = "...my_shop..."
    source_type = "woocommerce"
    start_date  = "2021-01-01"
  }
  name         = "Laura Lindgren III"
  secret_id    = "...my_secret_id..."
  workspace_id = "0097019a-48f8-48ec-a7bf-904e01105d38"
}