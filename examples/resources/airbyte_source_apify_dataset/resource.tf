resource "airbyte_source_apify_dataset" "my_source_apifydataset" {
  configuration = {
    dataset_id = "rHuMdwm6xCFt6WiGU"
    token      = "apify_api_PbVwb1cBbuvbfg2jRmAIHZKgx3NQyfEMG7uk"
  }
  definition_id = "f83c21b5-17b1-46f1-b884-6bcd51374519"
  name          = "Renee Schamberger"
  secret_id     = "...my_secret_id..."
  workspace_id  = "360526ae-8aa3-4c4f-a879-13b8668105e1"
}