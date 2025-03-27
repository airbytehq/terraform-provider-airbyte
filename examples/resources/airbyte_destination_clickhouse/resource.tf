resource "airbyte_destination_clickhouse" "my_destination_clickhouse" {
  configuration = {
    database        = "...my_database..."
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 8123
    raw_data_schema = "...my_raw_data_schema..."
    ssl             = true
    tunnel_method = {
      no_tunnel = {
        # ...
      }
    }
    username = "...my_username..."
  }
  definition_id = "f7e79763-e821-47f1-9f09-071b66436a92"
  name          = "...my_name..."
  workspace_id  = "18cdd7db-9638-49f4-915d-c14e35de40fa"
}