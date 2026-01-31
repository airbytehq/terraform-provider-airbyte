resource "airbyte_source_apify_dataset" "my_source_apifydataset" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    dataset_id            = "rHuMdwm6xCFt6WiGU"
    token                 = "apify_api_PbVwb1cBbuvbfg2jRmAIHZKgx3NQyfEMG7uk"
  }
  definition_id = "49497209-8cea-4532-b165-394417019982"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "d350e995-36c3-4597-9bda-37f40d6e49ad"
}