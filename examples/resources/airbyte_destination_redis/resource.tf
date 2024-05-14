resource "airbyte_destination_redis" "my_destination_redis" {
  configuration = {
    cache_type = "hash"
    host       = "localhost,127.0.0.1"
    password   = "...my_password..."
    port       = 7
    ssl        = false
    ssl_mode = {
      disable = {}
    }
    tunnel_method = {
      no_tunnel = {}
    }
    username = "Lane.Thiel"
  }
  definition_id = "b83f63d3-4837-40e1-b3ec-9d4f32d3e192"
  name          = "Guy O'Hara"
  workspace_id  = "c0f29f7c-bd12-4b32-8943-801c3678d42b"
}