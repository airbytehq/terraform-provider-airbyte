resource "airbyte_destination_mariadb_columnstore" "my_destination_mariadbcolumnstore" {
  configuration = {
    database         = "...my_database..."
    destination_type = "mariadb-columnstore"
    host             = "...my_host..."
    jdbc_url_params  = "...my_jdbc_url_params..."
    password         = "...my_password..."
    port             = 3306
    tunnel_method = {
      destination_mariadb_columnstore_ssh_tunnel_method_no_tunnel = {
        tunnel_method = "NO_TUNNEL"
      }
    }
    username = "Delaney_Nader"
  }
  name         = "Nicolas Kassulke"
  workspace_id = "64dbb675-fd5e-460b-b75e-d4f6fbee41f3"
}