resource "airbyte_destination_mysql" "my_destination_mysql" {
  configuration = {
    database         = "...my_database..."
    destination_type = "mysql"
    host             = "...my_host..."
    jdbc_url_params  = "...my_jdbc_url_params..."
    password         = "...my_password..."
    port             = 3306
    tunnel_method = {
      destination_mysql_ssh_tunnel_method_no_tunnel = {
        tunnel_method = "NO_TUNNEL"
      }
    }
    username = "Nadia_Howe62"
  }
  name         = "Rudolph Trantow"
  workspace_id = "5aa8e482-4d0a-4b40-b508-8e51862065e9"
}