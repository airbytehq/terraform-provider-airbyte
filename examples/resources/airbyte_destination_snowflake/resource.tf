resource "airbyte_destination_snowflake" "my_destination_snowflake" {
  configuration = {
    credentials = {
      auth_type            = "Key Pair Authentication"
      private_key          = "...my_private_key..."
      private_key_password = "...my_private_key_password..."
    }
    database          = "AIRBYTE_DATABASE"
    destination_type  = "snowflake"
    file_buffer_count = 10
    host              = "accountname.snowflakecomputing.com"
    jdbc_url_params   = "...my_jdbc_url_params..."
    loading_method = {
      method = "Internal Staging"
    }
    role      = "AIRBYTE_ROLE"
    schema    = "AIRBYTE_SCHEMA"
    username  = "AIRBYTE_USER"
    warehouse = "AIRBYTE_WAREHOUSE"
  }
  name         = "Juan Wolf"
  workspace_id = "4310661e-9634-49e1-8f9e-06e3a437000a"
}