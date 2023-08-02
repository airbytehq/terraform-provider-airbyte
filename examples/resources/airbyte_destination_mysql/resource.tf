resource "airbyte_destination_mysql" "my_destination_mysql" {
  configuration = {
    database         = "...my_database..."
    destination_type = "mysql"
    host             = "...my_host..."
    jdbc_url_params  = "...my_jdbc_url_params..."
    password         = "...my_password..."
    port             = 3306
    tunnel_method = {
      tunnel_method = "NO_TUNNEL"
    }
    username = "Lisa92"
  }
  name         = "Dr. Jody Cummings"
  workspace_id = "57e1858b-6a89-4fbe-ba5a-a8e4824d0ab4"
}