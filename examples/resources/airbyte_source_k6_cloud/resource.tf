resource "airbyte_source_k6_cloud" "my_source_k6cloud" {
  configuration = {
    api_token = "...my_api_token..."
  }
  definition_id = "2e85afcc-9acc-46e7-a95c-9a7c9f197511"
  name          = "Franklin D'Amore"
  secret_id     = "...my_secret_id..."
  workspace_id  = "96585095-001a-4ad5-a5f9-cfb0d1e8d3ac"
}