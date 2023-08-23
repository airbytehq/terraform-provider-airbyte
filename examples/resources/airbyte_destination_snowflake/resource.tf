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
    host             = "accountname.us-east-2.aws.snowflakecomputing.com"
    jdbc_url_params  = "...my_jdbc_url_params..."
    raw_data_schema  = "...my_raw_data_schema..."
    role             = "AIRBYTE_ROLE"
    schema           = "AIRBYTE_SCHEMA"
    use_1s1t_format  = true
    username         = "AIRBYTE_USER"
    warehouse        = "AIRBYTE_WAREHOUSE"
  }
  name         = "Dr. Terrell Stanton"
  workspace_id = "fe6c632c-a3ae-4d01-9799-6312fde04771"
}