resource "airbyte_source_apify_dataset" "my_source_apifydataset" {
  configuration = {
    dataset_id = "rHuMdwm6xCFt6WiGU"
    token      = "apify_api_PbVwb1cBbuvbfg2jRmAIHZKgx3NQyfEMG7uk"
  }
  definition_id = "184cac7d-cada-4d29-b8da-5765e7880f00"
  name          = "Curtis Berge"
  secret_id     = "...my_secret_id..."
  workspace_id  = "ef9a90fa-7f8f-4441-b58d-fc559a0bee1c"
}