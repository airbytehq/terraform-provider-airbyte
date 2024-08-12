resource "airbyte_destination_redis" "my_destination_redis" {
  configuration = {
    cache_type = "hash"
    host       = "localhost,127.0.0.1"
    password   = "...my_password..."
    port       = 5
    ssl        = true
    ssl_mode = {
      disable = {}
    }
    tunnel_method = {
      no_tunnel = {}
    }
    username = "Ellen.Champlin16"
  }
  definition_id = "94a31a29-aaf3-4c68-870e-ca1537042295"
  name          = "Hector Turner"
  workspace_id  = "dc306165-86b7-4399-8fea-69beba7dc7cd"
}