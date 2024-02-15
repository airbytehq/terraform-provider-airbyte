resource "airbyte_source_chargebee" "my_source_chargebee" {
  configuration = {
    product_catalog = "1.0"
    site            = "airbyte-test"
    site_api_key    = "...my_site_api_key..."
    start_date      = "2021-01-25T00:00:00Z"
  }
  definition_id = "2c2e302e-6de9-42b3-a430-98446f9835e6"
  name          = "Andrea Cruickshank III"
  secret_id     = "...my_secret_id..."
  workspace_id  = "b828621a-877d-42e6-a5cd-d80ba5ff53c6"
}