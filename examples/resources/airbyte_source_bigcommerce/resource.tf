resource "airbyte_source_bigcommerce" "my_source_bigcommerce" {
  configuration = {
    access_token = "...my_access_token..."
    source_type  = "bigcommerce"
    start_date   = "2021-01-01"
    store_hash   = "...my_store_hash..."
  }
  name         = "Emma Ward"
  secret_id    = "...my_secretId..."
  workspace_id = "2defcce8-f197-4777-be63-562a7b408f05"
}