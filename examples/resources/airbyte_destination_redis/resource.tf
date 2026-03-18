resource "airbyte_destination_redis" "my_destination_redis" {
  configuration = {
    cache_type = "hash"
    host       = "localhost,127.0.0.1"
    password   = "...my_password..."
    port       = 6379
    ssl        = false
    ssl_mode = {
      disable = {
        # ...
      }
    }
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
  definition_id = "d4d3fef9-e319-45c2-881a-bd02ce44cc9f"
  name          = "...my_name..."
  workspace_id  = "689f014e-fdd2-4302-a299-7c4cc3f23969"
}