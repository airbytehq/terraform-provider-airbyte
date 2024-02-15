resource "airbyte_source_apify_dataset" "my_source_apifydataset" {
  configuration = {
    dataset_id = "rHuMdwm6xCFt6WiGU"
    token      = "apify_api_PbVwb1cBbuvbfg2jRmAIHZKgx3NQyfEMG7uk"
  }
  definition_id = "181e6e55-fd9e-4be7-b2f5-ca6ecdfaf2b0"
  name          = "Mr. Andrea Bogan IV"
  secret_id     = "...my_secret_id..."
  workspace_id  = "e036b268-d758-4466-8963-e10b1b394b84"
}