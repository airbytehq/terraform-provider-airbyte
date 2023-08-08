resource "airbyte_destination_redis" "my_destination_redis" {
  configuration = {
    cache_type       = "hash"
    destination_type = "redis"
    host             = "localhost,127.0.0.1"
    password         = "...my_password..."
    port             = 10
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
    username = "Americo_Weber"
  }
  name         = "Gene Sauer"
  workspace_id = "2ca3aed0-1179-4963-92fd-e04771778ff6"
}