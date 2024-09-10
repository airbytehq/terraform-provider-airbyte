resource "airbyte_destination_databricks" "my_destination_databricks" {
  configuration = {
    accept_terms = false
    authentication = {
      o_auth2_recommended = {
        client_id = "...my_client_id..."
        secret    = "...my_secret..."
      }
    }
    database            = "...my_database..."
    hostname            = "abc-12345678-wxyz.cloud.databricks.com"
    http_path           = "sql/1.0/warehouses/0000-1111111-abcd90"
    port                = "443"
    purge_staging_data  = true
    raw_schema_override = "...my_raw_schema_override..."
    schema              = "default"
  }
  definition_id = "bfbb5605-d730-46cf-a6f6-0bfc11e74f73"
  name          = "Janis Kohler"
  workspace_id  = "53e98a4c-0499-445e-9d6e-956416d119e8"
}