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
  definition_id = "08ecd761-f19b-460a-a080-4c971e60235d"
  name          = "Frank Marquardt"
  secret_id     = "...my_secret_id..."
  workspace_id  = "dad73b79-d20b-448a-8fdc-6fb504a12b77"
}