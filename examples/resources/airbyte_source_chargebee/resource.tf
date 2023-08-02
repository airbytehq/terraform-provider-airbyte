resource "airbyte_source_chargebee" "my_source_chargebee" {
  configuration = {
    product_catalog = "2.0"
    site            = "airbyte-test"
    site_api_key    = "...my_site_api_key..."
    source_type     = "chargebee"
    start_date      = "2021-01-25T00:00:00Z"
  }
  name         = "Roxanne Aufderhar"
  secret_id    = "...my_secretId..."
  workspace_id = "44cf5e9d-9a45-478a-9c1a-c600dec001ac"
}