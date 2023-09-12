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
    username = "Sheldon.Smitham"
  }
  name         = "Guy Luettgen"
  workspace_id = "a8d8f5c0-b2f2-4fb7-b194-a276b26916fe"
}