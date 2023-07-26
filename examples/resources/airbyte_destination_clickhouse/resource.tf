resource "airbyte_destination_clickhouse" "my_destination_clickhouse" {
  configuration = {
    database         = "...my_database..."
    destination_type = "clickhouse"
    host             = "...my_host..."
    jdbc_url_params  = "...my_jdbc_url_params..."
    password         = "...my_password..."
    port             = 8123
    tunnel_method = {
      tunnel_method = "NO_TUNNEL"
    }
    username = "Hannah40"
  }
  name         = "Virginia Wunsch"
  workspace_id = "76b0d5f0-d30c-45fb-b258-7053202c73d5"
}