resource "airbyte_destination_redis" "my_destination_redis" {
  configuration = {
    cache_type = "hash"
    host       = "localhost,127.0.0.1"
    password   = "...my_password..."
    port       = 10
    ssl        = true
    ssl_mode = {
      disable = {}
    }
    tunnel_method = {
      no_tunnel = {}
    }
    username = "Isaiah_Fay61"
  }
  definition_id = "d4f32d3e-192a-48a4-bc0f-29f7cbd12b32"
  name          = "Guadalupe Gerlach"
  workspace_id  = "01c3678d-42b6-4294-a31a-29aaf3c68070"
}