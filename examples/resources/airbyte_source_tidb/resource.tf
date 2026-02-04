resource "airbyte_source_tidb" "my_source_tidb" {
  configuration = {
    database        = "...my_database..."
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 4000
    ssl             = true
    tunnel_method = {
      password_authentication = {
        tunnel_host          = "...my_tunnel_host..."
        tunnel_port          = 22
        tunnel_user          = "...my_tunnel_user..."
        tunnel_user_password = "...my_tunnel_user_password..."
      }
    }
    username = "...my_username..."
  }
  definition_id = "99173c95-16a2-40da-b1b9-29d7efabaec9"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "e19b33a0-d5c4-44f4-9969-c64841d2abba"
}