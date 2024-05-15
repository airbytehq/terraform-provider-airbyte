resource "airbyte_source_chargebee" "my_source_chargebee" {
  configuration = {
    product_catalog = "2.0"
    site            = "airbyte-test"
    site_api_key    = "...my_site_api_key..."
    start_date      = "2021-01-25T00:00:00Z"
  }
  definition_id = "10725ff7-f1a2-47e8-bd2f-193d4f9ab29a"
  name          = "Lucia Little IV"
  secret_id     = "...my_secret_id..."
  workspace_id  = "dec4e3ea-b02c-4cb9-8852-3df16a0cc499"
}