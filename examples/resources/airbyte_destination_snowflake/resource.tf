resource "airbyte_destination_snowflake" "my_destination_snowflake" {
  configuration = {
    credentials = {
      destination_snowflake_authorization_method_key_pair_authentication = {
        auth_type            = "Key Pair Authentication"
        private_key          = "...my_private_key..."
        private_key_password = "...my_private_key_password..."
      }
    }
    database          = "AIRBYTE_DATABASE"
    destination_type  = "snowflake"
    file_buffer_count = 10
    host              = "accountname.us-east-2.aws.snowflakecomputing.com"
    jdbc_url_params   = "...my_jdbc_url_params..."
    loading_method = {
      destination_snowflake_data_staging_method_recommended_internal_staging = {
        method = "Internal Staging"
      }
    }
    role      = "AIRBYTE_ROLE"
    schema    = "AIRBYTE_SCHEMA"
    username  = "AIRBYTE_USER"
    warehouse = "AIRBYTE_WAREHOUSE"
  }
  name         = "Miss Katrina Weber"
  workspace_id = "9e06e3a4-3700-40ae-ab6b-c9b8f759eac5"
}