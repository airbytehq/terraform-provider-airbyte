resource "airbyte_destination_redis" "my_destination_redis" {
  configuration = {
    cache_type       = "hash"
    destination_type = "redis"
    host             = "localhost,127.0.0.1"
    password         = "...my_password..."
    port             = 3
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
    username = "Alphonso3"
  }
  name         = "Bonnie Halvorson"
  workspace_id = "f94e29e9-73e9-422a-97a1-5be3e060807e"
}