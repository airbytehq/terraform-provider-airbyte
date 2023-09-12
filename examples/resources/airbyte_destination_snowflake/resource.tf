resource "airbyte_destination_snowflake" "my_destination_snowflake" {
  configuration = {
    credentials = {
      destination_snowflake_authorization_method_key_pair_authentication = {
        auth_type            = "Key Pair Authentication"
        private_key          = "...my_private_key..."
        private_key_password = "...my_private_key_password..."
      }
    }
    database         = "AIRBYTE_DATABASE"
    destination_type = "snowflake"
    host             = "accountname.snowflakecomputing.com"
    jdbc_url_params  = "...my_jdbc_url_params..."
    raw_data_schema  = "...my_raw_data_schema..."
    role             = "AIRBYTE_ROLE"
    schema           = "AIRBYTE_SCHEMA"
    username         = "AIRBYTE_USER"
    warehouse        = "AIRBYTE_WAREHOUSE"
  }
  name         = "Shaun Osinski"
  workspace_id = "851d6c64-5b08-4b61-891b-aa0fe1ade008"
}