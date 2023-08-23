resource "airbyte_source_bigcommerce" "my_source_bigcommerce" {
  configuration = {
    access_token = "...my_access_token..."
    source_type  = "bigcommerce"
    start_date   = "2021-01-01"
    store_hash   = "...my_store_hash..."
  }
  name         = "Bill Kling"
  secret_id    = "...my_secret_id..."
  workspace_id = "b40463a7-d575-4f14-80e7-64ad7334ec1b"
}