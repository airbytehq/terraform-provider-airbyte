resource "airbyte_source_dbt" "my_source_dbt" {
  configuration = {
    account_id            = "...my_account_id..."
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key_2             = "...my_api_key_2..."
  }
  definition_id = "8cb19d39-de09-4d50-8668-ce3741b5cd7e"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "4d28cc1c-d8bf-44f5-a0f6-d6f45a406b08"
}