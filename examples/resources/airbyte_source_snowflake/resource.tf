resource "airbyte_source_snowflake" "my_source_snowflake" {
  configuration = {
    credentials = {
      source_snowflake_authorization_method_o_auth2_0 = {
        access_token  = "...my_access_token..."
        auth_type     = "OAuth"
        client_id     = "...my_client_id..."
        client_secret = "...my_client_secret..."
        refresh_token = "...my_refresh_token..."
      }
    }
    database        = "AIRBYTE_DATABASE"
    host            = "accountname.us-east-2.aws.snowflakecomputing.com"
    jdbc_url_params = "...my_jdbc_url_params..."
    role            = "AIRBYTE_ROLE"
    schema          = "AIRBYTE_SCHEMA"
    source_type     = "snowflake"
    warehouse       = "AIRBYTE_WAREHOUSE"
  }
  name         = "Katrina Tillman"
  secret_id    = "...my_secret_id..."
  workspace_id = "3d492ed1-4b8a-42c1-9545-45e955dcc185"
}