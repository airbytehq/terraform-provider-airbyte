resource "airbyte_destination_snowflake" "my_destination_snowflake" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    cdc_deletion_mode     = "Hard delete"
    credentials = {
      key_pair_authentication = {
        additional_properties = "{ \"see\": \"documentation\" }"
        auth_type             = "Key Pair Authentication"
        private_key           = "...my_private_key..."
        private_key_password  = "...my_private_key_password..."
      }
    }
    database              = "AIRBYTE_DATABASE"
    disable_type_dedupe   = true
    host                  = "accountname.us-east-2.aws.snowflakecomputing.com"
    jdbc_url_params       = "...my_jdbc_url_params..."
    raw_data_schema       = "...my_raw_data_schema..."
    retention_period_days = 9
    role                  = "AIRBYTE_ROLE"
    schema                = "AIRBYTE_SCHEMA"
    username              = "AIRBYTE_USER"
    warehouse             = "AIRBYTE_WAREHOUSE"
  }
  definition_id = "424892c4-daac-4491-b35d-c6688ba547ba"
  name          = "...my_name..."
  workspace_id  = "058d9730-38a6-485c-8631-dc0cc86125f9"
}