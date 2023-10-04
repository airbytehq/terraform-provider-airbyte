resource "airbyte_source_chargebee" "my_source_chargebee" {
  configuration = {
    product_catalog = "2.0"
    site            = "airbyte-test"
    site_api_key    = "...my_site_api_key..."
    start_date      = "2021-01-25T00:00:00Z"
  }
  name         = "Marcus Jaskolski"
  secret_id    = "...my_secret_id..."
  workspace_id = "3644196a-04bb-4966-ae7d-15e7eedd4643"
}