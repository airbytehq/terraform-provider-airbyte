resource "airbyte_source_dbt" "my_source_dbt" {
  configuration = {
    account_id = "...my_account_id..."
    api_key_2  = "...my_api_key_2..."
  }
  definition_id = "71d6f7a7-7e51-4b04-b8d5-2e6bc1e22381"
  name          = "Clint Sanford"
  secret_id     = "...my_secret_id..."
  workspace_id  = "9642f3c2-fe19-4c32-adfe-e92bc3373ad2"
}