resource "airbyte_source_kustomer_singer" "my_source_kustomersinger" {
  configuration = {
    api_token  = "...my_api_token..."
    start_date = "2019-01-01T00:00:00Z"
  }
  name         = "Alberto McKenzie"
  secret_id    = "...my_secret_id..."
  workspace_id = "d0e8f2a3-7cc1-4fbe-8883-da2fecd2cab2"
}