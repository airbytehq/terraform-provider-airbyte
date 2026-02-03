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
    purge_staging_data  = false
    raw_schema_override = "...my_raw_schema_override..."
    schema              = "default"
  }
  definition_id = "fb6a88f5-a304-46f5-ab8b-4280a6d91f99"
  name          = "...my_name..."
  workspace_id  = "2615758c-c904-459e-9fd6-c8a55cba9327"
}