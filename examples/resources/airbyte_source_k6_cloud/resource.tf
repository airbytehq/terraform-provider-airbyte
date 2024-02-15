resource "airbyte_source_k6_cloud" "my_source_k6cloud" {
  configuration = {
    api_token = "...my_api_token..."
  }
  definition_id = "13ed5606-ac59-4e7c-8aee-eb09ffd3753f"
  name          = "Francisco Kautzer I"
  secret_id     = "...my_secret_id..."
  workspace_id  = "03ba1bd8-103c-4fb4-a284-9b585759fd79"
}