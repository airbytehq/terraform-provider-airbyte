resource "airbyte_source_gainsight_px" "my_source_gainsightpx" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "239a9296-60c9-43eb-9144-8c1cd3afe5ef"
  name          = "Warren Doyle PhD"
  secret_id     = "...my_secret_id..."
  workspace_id  = "22d9fe1b-d222-4412-9e63-15be306a4e83"
}