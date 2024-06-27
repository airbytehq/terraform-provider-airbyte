resource "airbyte_destination_databricks" "my_destination_databricks" {
  configuration = {
    accept_terms = true
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
  definition_id = "bfbb5605-d730-46cf-a6f6-0bfc11e74f73"
  name          = "Janis Kohler"
  workspace_id  = "53e98a4c-0499-445e-9d6e-956416d119e8"
}