resource "airbyte_source_k6_cloud" "my_source_k6cloud" {
  configuration = {
    api_token = "...my_api_token..."
  }
  definition_id = "5f9cfb0d-1e8d-43ac-8e90-aeed1087b988"
  name          = "Eula Hane"
  secret_id     = "...my_secret_id..."
  workspace_id  = "e598cc59-eb95-42f0-a231-c57fd8f9d1ba"
}