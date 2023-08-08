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
    username = "Alfonzo.OReilly"
  }
  name         = "Miss Peter Hermiston"
  secret_id    = "...my_secret_id..."
  workspace_id = "72af923c-5949-4f83-b350-cf876ffb901c"
}