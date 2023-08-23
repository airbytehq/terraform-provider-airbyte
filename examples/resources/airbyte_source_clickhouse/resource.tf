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
    username = "Toni.Hudson"
  }
  name         = "Irvin Rippin"
  secret_id    = "...my_secret_id..."
  workspace_id = "b4ecae6c-3d5d-4b3a-9ebd-5daea4c506a8"
}