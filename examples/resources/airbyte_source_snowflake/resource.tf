resource "airbyte_source_snowflake" "my_source_snowflake" {
  configuration = {
    credentials = {
      source_snowflake_o_auth2_0 = {
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
  definition_id = "2e5fcf99-c418-476f-a0cb-c1b99ee1e960"
  name          = "Mrs. Jeanette Howell"
  secret_id     = "...my_secret_id..."
  workspace_id  = "0d51b311-4e9e-4d57-941c-3612b0e8c8cf"
}