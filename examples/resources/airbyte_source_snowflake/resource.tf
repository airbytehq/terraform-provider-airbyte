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
  definition_id = "22e5327d-8cbc-4054-bdc9-3d7d7628c478"
  name          = "Paula Hartmann"
  secret_id     = "...my_secret_id..."
  workspace_id  = "a6f537d9-dfc7-4f45-8565-e7155c9f06b5"
}