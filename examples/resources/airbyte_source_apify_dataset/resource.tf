resource "airbyte_source_apify_dataset" "my_source_apifydataset" {
  configuration = {
    dataset_id = "rHuMdwm6xCFt6WiGU"
    token      = "apify_api_PbVwb1cBbuvbfg2jRmAIHZKgx3NQyfEMG7uk"
  }
  definition_id = "2a875a1c-a190-4e95-bd11-82a17eb0af63"
  name          = "Darin Windler"
  secret_id     = "...my_secret_id..."
  workspace_id  = "3356f39b-ea5e-4208-9f0e-8905c8543b91"
}