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
    username = "Jewell.Lesch64"
  }
  name         = "Wilma Mosciski"
  workspace_id = "074ba446-9b6e-4214-9959-890afa563e25"
}