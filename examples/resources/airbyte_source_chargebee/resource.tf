resource "airbyte_source_chargebee" "my_source_chargebee" {
  configuration = {
    product_catalog = "2.0"
    site            = "airbyte-test"
    site_api_key    = "...my_site_api_key..."
    source_type     = "chargebee"
    start_date      = "2021-01-25T00:00:00Z"
  }
  name         = "Kristopher Walter"
  workspace_id = "5daea4c5-06a8-4aa9-8c02-644cf5e9d9a4"
}