resource "airbyte_destination_clickhouse" "my_destination_clickhouse" {
  configuration = {
    database        = "...my_database..."
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 8123
    raw_data_schema = "...my_raw_data_schema..."
    tunnel_method = {
      no_tunnel = {}
    }
    username = "Carmelo_Rosenbaum"
  }
  definition_id = "65d335e0-3abe-4bb7-9b58-e872ec68b6d2"
  name          = "Wade Schimmel"
  workspace_id  = "b5369415-66f2-42fd-b0a2-8af8c1d27b3e"
}