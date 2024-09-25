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
  definition_id = "f7ab2ac7-0a33-47a3-9131-b5bdf0c811e9"
  name          = "Pam Hoeger"
  secret_id     = "...my_secret_id..."
  workspace_id  = "0a295138-174c-4fa4-9536-74966ff0c642"
}