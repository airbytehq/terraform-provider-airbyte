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
    host                  = "accountname.snowflakecomputing.com"
    jdbc_url_params       = "...my_jdbc_url_params..."
    raw_data_schema       = "...my_raw_data_schema..."
    retention_period_days = 6
    role                  = "AIRBYTE_ROLE"
    schema                = "AIRBYTE_SCHEMA"
    use_merge_for_upsert  = false
    username              = "AIRBYTE_USER"
    warehouse             = "AIRBYTE_WAREHOUSE"
  }
  definition_id = "495eab20-ebb3-405f-b624-c43900725fa3"
  name          = "Stanley Emmerich"
  workspace_id  = "2ced92f8-e06e-4f6f-ad36-51e7d5496735"
}