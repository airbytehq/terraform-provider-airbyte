resource "airbyte_source_woocommerce" "my_source_woocommerce" {
  configuration = {
    api_key    = "...my_api_key..."
    api_secret = "...my_api_secret..."
    shop       = "...my_shop..."
    start_date = "2021-01-01"
  }
  name         = "Regina Skiles MD"
  secret_id    = "...my_secret_id..."
  workspace_id = "5a0295b1-97bb-4b02-a7d6-25c3155f731c"
}