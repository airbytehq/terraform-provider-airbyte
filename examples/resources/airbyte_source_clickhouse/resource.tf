resource "airbyte_source_clickhouse" "my_source_clickhouse" {
  configuration = {
    database = "default"
    host     = "...my_host..."
    password = "...my_password..."
    port     = 8123
    tunnel_method = {
      source_clickhouse_ssh_tunnel_method_no_tunnel = {}
    }
    username = "Sarah.Rolfson7"
  }
  name         = "Adrian Williamson"
  secret_id    = "...my_secret_id..."
  workspace_id = "13664c8a-b088-4c24-8e91-396f3407545d"
}