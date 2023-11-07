resource "airbyte_source_bigcommerce" "my_source_bigcommerce" {
  configuration = {
    access_token = "...my_access_token..."
    start_date   = "2021-01-01"
    store_hash   = "...my_store_hash..."
  }
  name         = "Max Mills"
  secret_id    = "...my_secret_id..."
  workspace_id = "7fd0c202-086d-4396-9e60-f942f937a3c5"
}