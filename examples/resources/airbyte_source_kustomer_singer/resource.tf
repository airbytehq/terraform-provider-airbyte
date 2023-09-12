resource "airbyte_source_kustomer_singer" "my_source_kustomersinger" {
  configuration = {
    api_token   = "...my_api_token..."
    source_type = "kustomer-singer"
    start_date  = "2019-01-01T00:00:00Z"
  }
  name         = "Bobbie Jacobs"
  secret_id    = "...my_secret_id..."
  workspace_id = "3c574750-1357-4e44-b51f-8b084c3197e1"
}