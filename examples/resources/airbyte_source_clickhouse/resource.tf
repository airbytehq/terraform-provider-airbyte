resource "airbyte_source_clickhouse" "my_source_clickhouse" {
  configuration = {
    database        = "default"
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 8123
    tunnel_method = {
      no_tunnel = {}
    }
    username = "Otho19"
  }
  definition_id = "e8783d50-d4d2-4b80-850d-c344f66cbf0e"
  name          = "Trevor Bednar"
  secret_id     = "...my_secret_id..."
  workspace_id  = "994ace41-dc5b-442f-aa22-8e88647f2d42"
}