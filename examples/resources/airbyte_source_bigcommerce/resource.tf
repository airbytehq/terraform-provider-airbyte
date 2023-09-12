resource "airbyte_source_bigcommerce" "my_source_bigcommerce" {
  configuration = {
    access_token = "...my_access_token..."
    source_type  = "bigcommerce"
    start_date   = "2021-01-01"
    store_hash   = "...my_store_hash..."
  }
  name         = "Beth Gleason"
  secret_id    = "...my_secret_id..."
  workspace_id = "9ab8366c-723f-4fda-9e06-bee4825c1fc0"
}