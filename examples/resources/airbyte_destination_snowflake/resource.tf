resource "airbyte_destination_snowflake" "my_destination_snowflake" {
  configuration = {
    credentials = {
      key_pair_authentication = {
        private_key          = "...my_private_key..."
        private_key_password = "...my_private_key_password..."
      }
    }
    database        = "AIRBYTE_DATABASE"
    host            = "accountname.us-east-2.aws.snowflakecomputing.com"
    jdbc_url_params = "...my_jdbc_url_params..."
    raw_data_schema = "...my_raw_data_schema..."
    role            = "AIRBYTE_ROLE"
    schema          = "AIRBYTE_SCHEMA"
    username        = "AIRBYTE_USER"
    warehouse       = "AIRBYTE_WAREHOUSE"
  }
  name         = "Van Leuschke"
  workspace_id = "e4a6f8bb-810e-4d64-af80-2e7b2183b2bc"
}