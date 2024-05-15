resource "airbyte_source_chargebee" "my_source_chargebee" {
  configuration = {
    product_catalog = "1.0"
    site            = "airbyte-test"
    site_api_key    = "...my_site_api_key..."
    start_date      = "2021-01-25T00:00:00Z"
  }
  definition_id = "a7074f01-6f72-4127-b33f-8652b2551b02"
  name          = "Mr. Jana Runolfsson"
  secret_id     = "...my_secret_id..."
  workspace_id  = "4a7ffb26-8dc1-4870-87d3-7ac99fd78516"
}