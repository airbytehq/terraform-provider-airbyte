resource "airbyte_source_snowflake" "my_source_snowflake" {
  configuration = {
    credentials = {
      access_token  = "...my_access_token..."
      auth_type     = "OAuth"
      client_id     = "...my_client_id..."
      client_secret = "...my_client_secret..."
      refresh_token = "...my_refresh_token..."
    }
    database        = "AIRBYTE_DATABASE"
    host            = "accountname.us-east-2.aws.snowflakecomputing.com"
    jdbc_url_params = "...my_jdbc_url_params..."
    role            = "AIRBYTE_ROLE"
    schema          = "AIRBYTE_SCHEMA"
    source_type     = "snowflake"
    warehouse       = "AIRBYTE_WAREHOUSE"
  }
  name         = "Shawn O'Kon"
  workspace_id = "dcc50c8a-3512-4c73-b848-930750a00e96"
}