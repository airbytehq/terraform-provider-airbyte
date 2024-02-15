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
    username = "Adah75"
  }
  definition_id = "6d65d335-e03a-4beb-b71b-58e872ec68b6"
  name          = "Shawn Olson"
  workspace_id  = "48b53694-1566-4f22-bd30-a28af8c1d27b"
}