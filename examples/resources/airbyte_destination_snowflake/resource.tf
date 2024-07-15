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
    host                  = "accountname.us-east-2.aws.snowflakecomputing.com"
    jdbc_url_params       = "...my_jdbc_url_params..."
    raw_data_schema       = "...my_raw_data_schema..."
    retention_period_days = 9
    role                  = "AIRBYTE_ROLE"
    schema                = "AIRBYTE_SCHEMA"
    username              = "AIRBYTE_USER"
    warehouse             = "AIRBYTE_WAREHOUSE"
  }
  definition_id = "289a0dc0-2329-4a5c-ae9f-3888495eab20"
  name          = "Ira Ratke II"
  workspace_id  = "f3624c43-9007-425f-a3e3-3722ced92f8e"
}