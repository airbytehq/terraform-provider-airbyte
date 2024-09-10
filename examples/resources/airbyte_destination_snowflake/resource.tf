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
    use_merge_for_upsert  = false
    username              = "AIRBYTE_USER"
    warehouse             = "AIRBYTE_WAREHOUSE"
  }
  definition_id = "89a0dc02-329a-45ca-a9f3-888495eab20e"
  name          = "Mrs. Kelvin Dickens"
  workspace_id  = "3624c439-0072-45fa-be33-722ced92f8e0"
}