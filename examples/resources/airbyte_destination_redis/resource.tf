resource "airbyte_destination_redis" "my_destination_redis" {
  configuration = {
    cache_type = "hash"
    host       = "localhost,127.0.0.1"
    password   = "...my_password..."
    port       = 7
    ssl        = false
    ssl_mode = {
      destination_redis_disable = {}
    }
    tunnel_method = {
      destination_redis_no_tunnel = {}
    }
    username = "Keyshawn.Ledner"
  }
  definition_id = "34412bc3-217a-4cbe-aad9-f3186486fc7b"
  name          = "Shannon Stroman"
  workspace_id  = "848f4034-6c04-4b19-bfb2-8918e382726e"
}