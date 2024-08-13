resource "airbyte_destination_snowflake" "my_destination_snowflake" {
  configuration = {
    credentials = {
      key_pair_authentication = {
        private_key          = "...my_private_key..."
        private_key_password = "...my_private_key_password..."
      }
    }
    database              = "AIRBYTE_DATABASE"
    disable_type_dedupe   = false
    host                  = "accountname.snowflakecomputing.com"
    jdbc_url_params       = "...my_jdbc_url_params..."
    raw_data_schema       = "...my_raw_data_schema..."
    retention_period_days = 5
    role                  = "AIRBYTE_ROLE"
    schema                = "AIRBYTE_SCHEMA"
    username              = "AIRBYTE_USER"
    warehouse             = "AIRBYTE_WAREHOUSE"
  }
  definition_id = "f6fed365-1e7d-4549-a735-da213c86a8b9"
  name          = "Santiago Will"
  workspace_id  = "53876e3d-e30a-486e-8df1-9faac84c3184"
}