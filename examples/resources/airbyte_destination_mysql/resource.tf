resource "airbyte_destination_mysql" "my_destination_mysql" {
  configuration = {
    database        = "...my_database..."
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 3306
    tunnel_method = {
      destination_mysql_no_tunnel = {}
    }
    username = "Millie80"
  }
  name         = "Colleen Langworth"
  workspace_id = "a3ea494c-4202-4097-9cad-1afa4145a8ea"
}