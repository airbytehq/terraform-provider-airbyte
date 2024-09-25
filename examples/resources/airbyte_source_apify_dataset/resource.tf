resource "airbyte_source_apify_dataset" "my_source_apifydataset" {
  configuration = {
    dataset_id = "rHuMdwm6xCFt6WiGU"
    token      = "apify_api_PbVwb1cBbuvbfg2jRmAIHZKgx3NQyfEMG7uk"
  }
  definition_id = "02c915f5-97cf-4589-a557-ce17ccd6b10d"
  name          = "Carmen Littel"
  secret_id     = "...my_secret_id..."
  workspace_id  = "4fdfb9af-007b-4c04-991b-eb057f07c546"
}