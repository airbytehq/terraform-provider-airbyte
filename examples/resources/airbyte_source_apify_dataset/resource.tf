resource "airbyte_source_apify_dataset" "my_source_apifydataset" {
  configuration = {
    dataset_id = "rHuMdwm6xCFt6WiGU"
    token      = "apify_api_PbVwb1cBbuvbfg2jRmAIHZKgx3NQyfEMG7uk"
  }
  definition_id = "d9ffe895-9afe-4ef6-9ead-1e5d3690efc6"
  name          = "Morris Davis"
  secret_id     = "...my_secret_id..."
  workspace_id  = "1d2ddb5d-aa9e-4a92-bcae-7b29c85e6b85"
}