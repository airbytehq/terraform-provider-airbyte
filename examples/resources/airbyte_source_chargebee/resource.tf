resource "airbyte_source_chargebee" "my_source_chargebee" {
  configuration = {
    product_catalog = "1.0"
    site            = "airbyte-test"
    site_api_key    = "...my_site_api_key..."
    start_date      = "2021-01-25T00:00:00Z"
  }
  definition_id = "f6b9b8b8-f8f6-4afb-b365-d687e087e390"
  name          = "Kelli Howell"
  secret_id     = "...my_secret_id..."
  workspace_id  = "17faeb4f-73b7-4e8d-8371-ecbee10511b4"
}