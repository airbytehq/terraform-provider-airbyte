resource "airbyte_source_chargebee" "my_source_chargebee" {
  configuration = {
    product_catalog = "2.0"
    site            = "airbyte-test"
    site_api_key    = "...my_site_api_key..."
    start_date      = "2021-01-25T00:00:00Z"
  }
  definition_id = "08691686-308e-4adb-b3c3-69be0c12ece5"
  name          = "Jean Mann"
  secret_id     = "...my_secret_id..."
  workspace_id  = "aef8e474-9058-48d0-a293-9574a681eea7"
}