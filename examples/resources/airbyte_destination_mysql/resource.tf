resource "airbyte_destination_mysql" "my_destination_mysql" {
  configuration = {
    database        = "...my_database..."
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 3306
    tunnel_method = {
      no_tunnel = {}
    }
    username = "Katrine_Wehner29"
  }
  definition_id = "356f389a-d49d-4bc4-babb-f1994382023b"
  name          = "Angelina Tremblay"
  workspace_id  = "1a7f288a-d3cd-4e3c-9d6f-a94b74b938f8"
}