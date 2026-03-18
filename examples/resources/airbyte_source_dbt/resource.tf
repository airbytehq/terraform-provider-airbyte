resource "airbyte_source_dbt" "my_source_dbt" {
  configuration = {
    account_id            = "...my_account_id..."
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key_2             = "...my_api_key_2..."
  }
  definition_id = "6eaa4fc5-cf11-413d-a0d6-0023402f71f6"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "4d28cc1c-d8bf-44f5-a0f6-d6f45a406b08"
}