resource "airbyte_destination_mysql" "my_destination_mysql" {
  configuration = {
    database            = "...my_database..."
    disable_type_dedupe = true
    host                = "...my_host..."
    jdbc_url_params     = "...my_jdbc_url_params..."
    password            = "...my_password..."
    port                = 3306
    raw_data_schema     = "...my_raw_data_schema..."
    tunnel_method = {
      no_tunnel = {}
    }
    username = "Jimmy.Cummings31"
  }
  definition_id = "ef4e895c-9212-4618-852d-1432f33897fe"
  name          = "Francis Rutherford"
  workspace_id  = "c8c4bf88-2725-4c3c-abc3-9a6d3f396b39"
}