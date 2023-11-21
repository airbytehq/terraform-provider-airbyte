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
    enable_schema_evolution          = true
    purge_staging_data               = false
    schema                           = "default"
  }
  definition_id = "05d7306c-fa6f-460b-bc11-e74f736d7a95"
  name          = "Meghan Mitchell"
  workspace_id  = "4c049945-edd6-4e95-a416-d119e802e071"
}