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
    username = "Johnpaul_Barton69"
  }
  definition_id = "376bce66-a7c0-4ce2-8da3-e9aab71454cb"
  name          = "Charlotte Blick"
  secret_id     = "...my_secret_id..."
  workspace_id  = "3e1da46c-4f68-45d2-8501-1b8862473b75"
}