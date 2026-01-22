resource "airbyte_source_chargebee" "my_source_chargebee" {
  configuration = {
    num_workers     = 1
    product_catalog = "1.0"
    site            = "airbyte-test"
    site_api_key    = "...my_site_api_key..."
    start_date      = "2021-01-25T00:00:00Z"
  }
  definition_id = "7e4892fa-00dc-4d82-9782-addab8c4f2fe"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "0b341506-9eb2-4891-a794-54f7de03f91f"
}