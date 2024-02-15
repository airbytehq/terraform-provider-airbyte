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
    username = "Loy_Bartoletti"
  }
  definition_id = "bdda328f-6c37-43e0-a663-420a6a3ab4d4"
  name          = "Georgia Haley"
  secret_id     = "...my_secret_id..."
  workspace_id  = "910e5c99-9e89-4cbd-8e8f-2a37cc1fbec8"
}