resource "airbyte_source_clickhouse" "my_source_clickhouse" {
  configuration = {
    database    = "default"
    host        = "...my_host..."
    password    = "...my_password..."
    port        = 8123
    source_type = "clickhouse"
    tunnel_method = {
      tunnel_method = "NO_TUNNEL"
    }
    username = "Deven_Koch"
  }
  name         = "Crystal Terry I"
  workspace_id = "c14125b0-960a-4668-951a-472af923c594"
}