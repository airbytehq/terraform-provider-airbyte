resource "airbyte_destination_redis" "my_destination_redis" {
  configuration = {
    cache_type = "hash"
    host       = "localhost,127.0.0.1"
    password   = "...my_password..."
    port       = 2
    ssl        = true
    ssl_mode = {
      destination_redis_ssl_modes_disable = {}
    }
    tunnel_method = {
      destination_redis_ssh_tunnel_method_no_tunnel = {}
    }
    username = "Kathryne_Monahan22"
  }
  name         = "Gerard Ratke"
  workspace_id = "3d3987f0-9ed8-432d-98dd-dbef1f87bb50"
}