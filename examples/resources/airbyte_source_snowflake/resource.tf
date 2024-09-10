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
  definition_id = "05e9e4de-da30-4dd3-8fb0-aa2fad058413"
  name          = "Penny Franecki"
  secret_id     = "...my_secret_id..."
  workspace_id  = "3e5de43c-907f-463c-802b-c2f7f5dfb2c2"
}