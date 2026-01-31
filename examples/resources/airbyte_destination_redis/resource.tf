resource "airbyte_destination_redis" "my_destination_redis" {
  configuration = {
    cache_type = "hash"
    host       = "localhost,127.0.0.1"
    password   = "...my_password..."
    port       = 31782
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
  definition_id = "08bb0713-356c-488b-92c9-dca7b330d808"
  name          = "...my_name..."
  workspace_id  = "689f014e-fdd2-4302-a299-7c4cc3f23969"
}