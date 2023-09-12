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
    username = "Magdalena_Kuvalis"
  }
  name         = "Sandy Huels"
  workspace_id = "97074ba4-469b-46e2-9419-59890afa563e"
}