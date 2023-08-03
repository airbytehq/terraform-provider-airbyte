resource "airbyte_destination_redis" "my_destination_redis" {
  configuration = {
    cache_type       = "hash"
    destination_type = "redis"
    host             = "localhost,127.0.0.1"
    password         = "...my_password..."
    port             = 4
    ssl              = true
    ssl_mode = {
      mode = "disable"
    }
    tunnel_method = {
      tunnel_method = "NO_TUNNEL"
    }
    username = "Joy.Swaniawski95"
  }
  name         = "Ms. Cheryl Hane"
  workspace_id = "ebfd0e9f-e6c6-432c-a3ae-d0117996312f"
}