resource "airbyte_destination_vertica" "my_destination_vertica" {
  configuration = {
    database        = "...my_database..."
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 5433
    schema          = "...my_schema..."
    tunnel_method = {
      destination_vertica_no_tunnel = {}
    }
    username = "Bailey26"
  }
  definition_id = "f7f4dcb2-8108-4584-a7e5-cd333285c7cc"
  name          = "Josefina Sporer"
  workspace_id  = "34f786aa-e3aa-4f52-bfe1-9eb1bf8ee233"
}