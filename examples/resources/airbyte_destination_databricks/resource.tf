resource "airbyte_destination_databricks" "my_destination_databricks" {
  configuration = {
    accept_terms = false
    authentication = {
      personal_access_token = {
        personal_access_token = "...my_personal_access_token..."
      }
    }
    database            = "...my_database..."
    hostname            = "abc-12345678-wxyz.cloud.databricks.com"
    http_path           = "sql/1.0/warehouses/0000-1111111-abcd90"
    port                = "443"
    purge_staging_data  = true
    raw_schema_override = "airbyte_internal"
    schema              = "default"
  }
  definition_id = "072d5540-f236-4294-ba7c-ade8fd918496"
  name          = "...my_name..."
  workspace_id  = "2615758c-c904-459e-9fd6-c8a55cba9327"
}