resource "airbyte_source_dbt" "my_source_dbt" {
  configuration = {
    account_id = "...my_account_id..."
    api_key_2  = "...my_api_key_2..."
  }
  definition_id = "86900517-4142-45e4-938a-30ea56cdfa27"
  name          = "Dominic Will"
  secret_id     = "...my_secret_id..."
  workspace_id  = "25b4bae6-1112-4211-be87-b490ecc6bf75"
}