resource "airbyte_destination_vertica" "my_destination_vertica" {
  configuration = {
    database        = "...my_database..."
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 5433
    schema          = "...my_schema..."
    tunnel_method = {
      destination_vertica_ssh_tunnel_method_no_tunnel = {}
    }
    username = "Douglas32"
  }
  name         = "Mr. Bobbie Wolf"
  workspace_id = "2182d15e-f4e8-495c-9212-618452d1432f"
}