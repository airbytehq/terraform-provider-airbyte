resource "airbyte_source_bigcommerce" "my_source_bigcommerce" {
  configuration = {
    access_token = "...my_access_token..."
    source_type  = "bigcommerce"
    start_date   = "2021-01-01"
    store_hash   = "...my_store_hash..."
  }
  name         = "Adrienne Carter"
  workspace_id = "0e115c80-bff9-4185-84ec-42defcce8f19"
}