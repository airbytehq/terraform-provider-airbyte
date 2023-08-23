resource "airbyte_source_chargebee" "my_source_chargebee" {
  configuration = {
    product_catalog = "1.0"
    site            = "airbyte-test"
    site_api_key    = "...my_site_api_key..."
    source_type     = "chargebee"
    start_date      = "2021-01-25T00:00:00Z"
  }
  name         = "Harvey Harber"
  secret_id    = "...my_secret_id..."
  workspace_id = "11f6c37a-5126-4243-835b-bc05a23a45ce"
}