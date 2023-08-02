resource "airbyte_source_k6_cloud" "my_source_k6cloud" {
  configuration = {
    api_token   = "...my_api_token..."
    source_type = "k6-cloud"
  }
  name         = "Lee Hegmann"
  secret_id    = "...my_secretId..."
  workspace_id = "475f16f5-6d38-45a3-84ac-631b99e26ced"
}