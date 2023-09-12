resource "airbyte_source_chargebee" "my_source_chargebee" {
  configuration = {
    product_catalog = "1.0"
    site            = "airbyte-test"
    site_api_key    = "...my_site_api_key..."
    source_type     = "chargebee"
    start_date      = "2021-01-25T00:00:00Z"
  }
  name         = "Viola Morissette"
  secret_id    = "...my_secret_id..."
  workspace_id = "fbbe6949-fb2b-4b4e-8ae6-c3d5db3adebd"
}