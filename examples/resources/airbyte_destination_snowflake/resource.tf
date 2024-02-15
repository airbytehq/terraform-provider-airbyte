resource "airbyte_destination_snowflake" "my_destination_snowflake" {
  configuration = {
    credentials = {
      key_pair_authentication = {
        private_key          = "...my_private_key..."
        private_key_password = "...my_private_key_password..."
      }
    }
    database                               = "AIRBYTE_DATABASE"
    disable_type_dedupe                    = true
    enable_incremental_final_table_updates = false
    host                                   = "accountname.snowflakecomputing.com"
    jdbc_url_params                        = "...my_jdbc_url_params..."
    raw_data_schema                        = "...my_raw_data_schema..."
    role                                   = "AIRBYTE_ROLE"
    schema                                 = "AIRBYTE_SCHEMA"
    username                               = "AIRBYTE_USER"
    warehouse                              = "AIRBYTE_WAREHOUSE"
  }
  definition_id = "d654173c-ccbb-4c51-a3ca-a62e557cba0d"
  name          = "Mr. Sherry Leuschke"
  workspace_id  = "a5767fcf-379f-4a40-91ea-e8db1144f7f4"
}