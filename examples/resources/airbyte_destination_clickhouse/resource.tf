resource "airbyte_destination_clickhouse" "my_destination_clickhouse" {
  configuration = {
    database         = "...my_database..."
    destination_type = "clickhouse"
    host             = "...my_host..."
    jdbc_url_params  = "...my_jdbc_url_params..."
    password         = "...my_password..."
    port             = 8123
    tunnel_method = {
      destination_clickhouse_ssh_tunnel_method_no_tunnel = {
        tunnel_method = "NO_TUNNEL"
      }
    }
    username = "Russ76"
  }
  name         = "Mindy Renner"
  workspace_id = "58705320-2c73-4d5f-a9b9-0c28909b3fe4"
}