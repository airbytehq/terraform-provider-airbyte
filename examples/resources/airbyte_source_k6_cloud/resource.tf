resource "airbyte_source_k6_cloud" "my_source_k6cloud" {
  configuration = {
    api_token = "...my_api_token..."
  }
  definition_id = "6849f7bb-eaae-4f52-8043-cb4c473e8c7b"
  name          = "Mrs. Bill Mosciski IV"
  secret_id     = "...my_secret_id..."
  workspace_id  = "4a553fda-41da-4f76-a6ef-51c5fa52e0c6"
}