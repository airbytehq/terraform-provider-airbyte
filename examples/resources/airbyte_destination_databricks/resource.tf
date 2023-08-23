resource "airbyte_destination_databricks" "my_destination_databricks" {
  configuration = {
    accept_terms = false
    data_source = {
      destination_databricks_data_source_recommended_managed_tables = {
        data_source_type = "MANAGED_TABLES_STORAGE"
      }
    }
    database                         = "...my_database..."
    databricks_http_path             = "sql/protocolvx/o/1234567489/0000-1111111-abcd90"
    databricks_personal_access_token = "dapi0123456789abcdefghij0123456789AB"
    databricks_port                  = "443"
    databricks_server_hostname       = "abc-12345678-wxyz.cloud.databricks.com"
    destination_type                 = "databricks"
    enable_schema_evolution          = true
    purge_staging_data               = true
    schema                           = "default"
  }
  name         = "Rickey Wolf"
  workspace_id = "280d1ba7-7a89-4ebf-b37a-e4203ce5e6a9"
}