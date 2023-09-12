resource "airbyte_source_clickhouse" "my_source_clickhouse" {
  configuration = {
    database    = "default"
    host        = "...my_host..."
    password    = "...my_password..."
    port        = 8123
    source_type = "clickhouse"
    tunnel_method = {
      source_clickhouse_ssh_tunnel_method_no_tunnel = {
        tunnel_method = "NO_TUNNEL"
      }
    }
    username = "Gerry81"
  }
  name         = "Mr. Simon Altenwerth"
  secret_id    = "...my_secret_id..."
  workspace_id = "c802e2ec-09ff-48f0-b816-ff3477c13e90"
}