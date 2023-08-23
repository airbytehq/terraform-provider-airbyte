resource "airbyte_destination_redis" "my_destination_redis" {
  configuration = {
    cache_type       = "hash"
    destination_type = "redis"
    host             = "localhost,127.0.0.1"
    password         = "...my_password..."
    port             = 6
    ssl              = false
    ssl_mode = {
      destination_redis_ssl_modes_disable = {
        mode = "disable"
      }
    }
    tunnel_method = {
      destination_redis_ssh_tunnel_method_no_tunnel = {
        tunnel_method = "NO_TUNNEL"
      }
    }
    username = "Duncan69"
  }
  name         = "Diane Mayer"
  workspace_id = "8abf603a-79f9-4dfe-8ab7-da8a50ce187f"
}