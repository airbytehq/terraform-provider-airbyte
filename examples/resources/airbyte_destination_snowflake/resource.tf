resource "airbyte_destination_snowflake" "my_destination_snowflake" {
  configuration = {
    credentials = {
      key_pair_authentication = {
        private_key          = "...my_private_key..."
        private_key_password = "...my_private_key_password..."
      }
    }
    database              = "AIRBYTE_DATABASE"
    disable_type_dedupe   = true
    host                  = "accountname.us-east-2.aws.snowflakecomputing.com"
    jdbc_url_params       = "...my_jdbc_url_params..."
    raw_data_schema       = "...my_raw_data_schema..."
    retention_period_days = 7
    role                  = "AIRBYTE_ROLE"
    schema                = "AIRBYTE_SCHEMA"
    username              = "AIRBYTE_USER"
    warehouse             = "AIRBYTE_WAREHOUSE"
  }
  definition_id = "9a0dc023-29a5-4cae-9f38-88495eab20eb"
  name          = "Philip Baumbach"
  workspace_id  = "3624c439-0072-45fa-be33-722ced92f8e0"
}