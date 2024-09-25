resource "airbyte_destination_databricks" "my_destination_databricks" {
  configuration = {
    accept_terms = true
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
  definition_id = "bb5605d7-306c-4fa6-b60b-fc11e74f736d"
  name          = "Molly Medhurst"
  workspace_id  = "e98a4c04-9945-4edd-ae95-6416d119e802"
}