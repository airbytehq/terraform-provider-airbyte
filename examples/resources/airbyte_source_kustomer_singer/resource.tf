resource "airbyte_source_kustomer_singer" "my_source_kustomersinger" {
  configuration = {
    api_token   = "...my_api_token..."
    source_type = "kustomer-singer"
    start_date  = "2019-01-01T00:00:00Z"
  }
  name         = "Vivian Rolfson"
  workspace_id = "152eab9c-d7e5-4224-a6a0-e123b7847ec5"
}