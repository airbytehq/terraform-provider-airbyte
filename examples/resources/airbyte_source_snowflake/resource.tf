resource "airbyte_source_snowflake" "my_source_snowflake" {
  configuration = {
    credentials = {
      key_pair_authentication = {
        private_key          = "...my_private_key..."
        private_key_password = "...my_private_key_password..."
        username             = "AIRBYTE_USER"
      }
      o_auth20 = {
        access_token  = "...my_access_token..."
        client_id     = "...my_client_id..."
        client_secret = "...my_client_secret..."
        refresh_token = "...my_refresh_token..."
      }
      username_and_password = {
        password = "...my_password..."
        username = "AIRBYTE_USER"
      }
    }
    database        = "AIRBYTE_DATABASE"
    host            = "accountname.us-east-2.aws.snowflakecomputing.com"
    jdbc_url_params = "...my_jdbc_url_params..."
    role            = "AIRBYTE_ROLE"
    schema          = "AIRBYTE_SCHEMA"
    warehouse       = "AIRBYTE_WAREHOUSE"
  }
  definition_id = "27125485-2542-4c33-816b-4945c1b73270"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "f456591a-a491-49d7-af41-2d440d1ae6ee"
}