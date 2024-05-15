resource "airbyte_destination_databricks" "my_destination_databricks" {
  configuration = {
    accept_terms = false
    data_source = {
      recommended_managed_tables = {}
    }
    database                         = "...my_database..."
    databricks_http_path             = "sql/protocolvx/o/1234567489/0000-1111111-abcd90"
    databricks_personal_access_token = "dapi0123456789abcdefghij0123456789AB"
    databricks_port                  = "443"
    databricks_server_hostname       = "abc-12345678-wxyz.cloud.databricks.com"
    enable_schema_evolution          = false
    purge_staging_data               = true
    schema                           = "default"
  }
  definition_id = "3cbfbb56-05d7-4306-8fa6-f60bfc11e74f"
  name          = "Thelma Johnston"
  workspace_id  = "a953e98a-4c04-4994-9edd-6e956416d119"
}