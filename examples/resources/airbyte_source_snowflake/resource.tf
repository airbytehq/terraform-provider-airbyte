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
  definition_id = "47d95358-a568-419d-aabe-c21d7e3d24df"
  name          = "Luis Stiedemann Sr."
  secret_id     = "...my_secret_id..."
  workspace_id  = "342f997d-059d-438a-ae5f-cf99c41876fa"
}