resource "airbyte_source_chargebee" "my_source_chargebee" {
  configuration = {
    product_catalog = "1.0"
    site            = "airbyte-test"
    site_api_key    = "...my_site_api_key..."
    start_date      = "2021-01-25T00:00:00Z"
  }
  definition_id = "5e0c1f4b-65d9-4ebd-b57e-5946981cb460"
  name          = "Ms. Franklin Mraz"
  secret_id     = "...my_secret_id..."
  workspace_id  = "6308eadb-73c3-469b-a0c1-2ece59b9fbae"
}