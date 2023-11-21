resource "airbyte_source_apify_dataset" "my_source_apifydataset" {
  configuration = {
    dataset_id = "rHuMdwm6xCFt6WiGU"
    token      = "apify_api_PbVwb1cBbuvbfg2jRmAIHZKgx3NQyfEMG7uk"
  }
  definition_id = "a73356f3-9bea-45e2-889f-0e8905c8543b"
  name          = "Justin Luettgen"
  secret_id     = "...my_secret_id..."
  workspace_id  = "ac7dcada-d293-48da-9765-e7880f00a30d"
}