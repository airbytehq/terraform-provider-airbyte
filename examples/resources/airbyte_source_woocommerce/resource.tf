resource "airbyte_source_woocommerce" "my_source_woocommerce" {
  configuration = {
    api_key    = "...my_api_key..."
    api_secret = "...my_api_secret..."
    shop       = "...my_shop..."
    start_date = "2021-01-01"
  }
  definition_id = "5b33aab9-bd23-403d-b2a1-c65a55e757d5"
  name          = "Nancy Grady"
  secret_id     = "...my_secret_id..."
  workspace_id  = "5c9b62f3-d937-4ad7-80fd-70a723540d37"
}