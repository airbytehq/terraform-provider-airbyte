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
    enable_schema_evolution          = true
    purge_staging_data               = true
    schema                           = "default"
  }
  definition_id = "eca9f91e-b58c-4332-9745-6993f0626846"
  name          = "Ms. Betty Shanahan"
  workspace_id  = "7ed52cbf-f018-4589-b5bd-fe2750539f4b"
}