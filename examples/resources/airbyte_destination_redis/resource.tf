resource "airbyte_destination_redis" "my_destination_redis" {
  configuration = {
    cache_type = "hash"
    host       = "localhost,127.0.0.1"
    password   = "...my_password..."
    port       = 6
    ssl        = true
    ssl_mode = {
      disable = {}
    }
    tunnel_method = {
      no_tunnel = {}
    }
    username = "Salma59"
  }
  definition_id = "e64b83f6-3d34-4837-8e17-3ec9d4f32d3e"
  name          = "Shelly Connelly"
  workspace_id  = "a43c0f29-f7cb-4d12-b320-943801c3678d"
}