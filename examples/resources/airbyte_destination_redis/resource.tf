resource "airbyte_destination_redis" "my_destination_redis" {
  configuration = {
    cache_type = "hash"
    host       = "localhost,127.0.0.1"
    password   = "...my_password..."
    port       = 3
    ssl        = true
    ssl_mode = {
      disable = {}
    }
    tunnel_method = {
      no_tunnel = {}
    }
    username = "Julia.Schuster11"
  }
  definition_id = "c7ed17b1-d5b0-4028-9a0d-c02329a5cae9"
  name          = "Alfred Littel"
  workspace_id  = "495eab20-ebb3-405f-b624-c43900725fa3"
}