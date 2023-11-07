resource "airbyte_destination_clickhouse" "my_destination_clickhouse" {
  configuration = {
    database        = "...my_database..."
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 8123
    tunnel_method = {
      no_tunnel = {}
    }
    username = "Derick.Auer8"
  }
  name         = "Stanley Schaefer"
  workspace_id = "933cc05b-91a7-42d2-b00d-cd43ac809ede"
}