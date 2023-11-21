resource "airbyte_destination_snowflake" "my_destination_snowflake" {
  configuration = {
    credentials = {
      key_pair_authentication = {
        private_key          = "...my_private_key..."
        private_key_password = "...my_private_key_password..."
      }
    }
    database            = "AIRBYTE_DATABASE"
    disable_type_dedupe = true
    host                = "accountname.us-east-2.aws.snowflakecomputing.com"
    jdbc_url_params     = "...my_jdbc_url_params..."
    raw_data_schema     = "...my_raw_data_schema..."
    role                = "AIRBYTE_ROLE"
    schema              = "AIRBYTE_SCHEMA"
    username            = "AIRBYTE_USER"
    warehouse           = "AIRBYTE_WAREHOUSE"
  }
  definition_id = "d28dce71-d7fd-4713-a64c-8ab088c248e9"
  name          = "Robin Marvin"
  workspace_id  = "3407545d-5006-486d-84e6-08039bc7eb07"
}