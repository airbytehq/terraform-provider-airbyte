resource "airbyte_source_k6_cloud" "my_source_k6cloud" {
  configuration = {
    api_token   = "...my_api_token..."
    source_type = "k6-cloud"
  }
  name         = "Marcella Dooley"
  secret_id    = "...my_secret_id..."
  workspace_id = "a3c4ac63-1b99-4e26-8ed8-f9fdb9410f63"
}