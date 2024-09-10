resource "airbyte_source_chargebee" "my_source_chargebee" {
  configuration = {
    product_catalog = "1.0"
    site            = "airbyte-test"
    site_api_key    = "...my_site_api_key..."
    start_date      = "2021-01-25T00:00:00Z"
  }
  definition_id = "422d15b8-2862-41a8-b7d2-e625cdd80ba5"
  name          = "Aubrey Harber"
  secret_id     = "...my_secret_id..."
  workspace_id  = "6fc10ca6-7a82-47c3-9349-f444d8a8589d"
}