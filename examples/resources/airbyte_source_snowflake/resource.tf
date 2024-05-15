resource "airbyte_source_snowflake" "my_source_snowflake" {
  configuration = {
    credentials = {
      o_auth20 = {
        access_token  = "...my_access_token..."
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
    warehouse       = "AIRBYTE_WAREHOUSE"
  }
  definition_id = "eae9e175-3040-465f-a467-23901f87c9df"
  name          = "Cecilia Yundt"
  secret_id     = "...my_secret_id..."
  workspace_id  = "5013d5d0-cf40-43b2-856e-98a6950f0007"
}