resource "airbyte_source_kustomer_singer" "my_source_kustomersinger" {
  configuration = {
    api_token   = "...my_api_token..."
    source_type = "kustomer-singer"
    start_date  = "2019-01-01T00:00:00Z"
  }
  name         = "Camille Johnston"
  secret_id    = "...my_secret_id..."
  workspace_id = "3c4cce4b-6d76-496f-b3c5-747501357e44"
}