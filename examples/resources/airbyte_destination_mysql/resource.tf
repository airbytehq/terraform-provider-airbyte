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
    username = "Mavis.Ullrich12"
  }
  name         = "Chad Franey IV"
  workspace_id = "fe35b60e-b1ea-4426-955b-a3c28744ed53"
}