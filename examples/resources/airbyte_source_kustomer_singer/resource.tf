resource "airbyte_source_kustomer_singer" "my_source_kustomersinger" {
  configuration = {
    api_token   = "...my_api_token..."
    source_type = "kustomer-singer"
    start_date  = "2019-01-01T00:00:00Z"
  }
  name         = "Andrew Cassin"
  secret_id    = "...my_secretId..."
  workspace_id = "7847ec59-e1f6-47f3-84cc-e4b6d7696ff3"
}