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
    purge_staging_data               = false
    schema                           = "default"
  }
  name         = "Willis Haley"
  workspace_id = "941566f2-2fd3-40a2-8af8-c1d27b3e573c"
}