resource "airbyte_source_clickhouse" "my_source_clickhouse" {
  configuration = {
    database = "default"
    host     = "...my_host..."
    password = "...my_password..."
    port     = 8123
    tunnel_method = {
      source_clickhouse_no_tunnel = {}
    }
    username = "Maximus28"
  }
  definition_id = "54cb2418-93e1-4da4-ac4f-685d205011b8"
  name          = "Milton Crooks"
  secret_id     = "...my_secret_id..."
  workspace_id  = "3b757391-0861-48e9-9445-d83c494a849c"
}