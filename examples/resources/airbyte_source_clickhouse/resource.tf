resource "airbyte_source_clickhouse" "my_source_clickhouse" {
  configuration = {
    database        = "default"
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 8123
    ssl             = true
    tunnel_method = {
      ssh_key_authentication = {
        ssh_key     = "...my_ssh_key..."
        tunnel_host = "...my_tunnel_host..."
        tunnel_port = 22
        tunnel_user = "...my_tunnel_user..."
      }
    }
    username = "...my_username..."
  }
  definition_id = "00b2c59e-fb58-46ac-b669-7fa91692b680"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "d293fe7d-2312-4e0a-bed1-1c816b32f541"
}