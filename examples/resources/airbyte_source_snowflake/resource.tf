resource "airbyte_source_snowflake" "my_source_snowflake" {
  configuration = {
    credentials = {
      key_pair_authentication = {
        private_key          = "...my_private_key..."
        private_key_password = "...my_private_key_password..."
        username             = "AIRBYTE_USER"
      }
    }
    database        = "AIRBYTE_DATABASE"
    host            = "accountname.us-east-2.aws.snowflakecomputing.com"
    jdbc_url_params = "...my_jdbc_url_params..."
    role            = "AIRBYTE_ROLE"
    schema          = "AIRBYTE_SCHEMA"
    warehouse       = "AIRBYTE_WAREHOUSE"
  }
  definition_id = "9943dfa5-2a9e-4475-abff-ba2c1e7b6908"
  name          = "Sherman Stokes"
  secret_id     = "...my_secret_id..."
  workspace_id  = "1f19b60a-a080-44c9-b1e6-0235dc09fada"
}