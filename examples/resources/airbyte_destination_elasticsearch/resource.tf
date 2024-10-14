resource "airbyte_destination_elasticsearch" "my_destination_elasticsearch" {
  configuration = {
    authentication_method = {
      api_key_secret = {
        api_key_id     = "...my_api_key_id..."
        api_key_secret = "...my_api_key_secret..."
      }
      none = {
        # ...
      }
      username_password = {
        password = "...my_password..."
        username = "...my_username..."
      }
    }
    ca_certificate = "...my_ca_certificate..."
    endpoint       = "...my_endpoint..."
    tunnel_method = {
      no_tunnel = {
        # ...
      }
      password_authentication = {
        tunnel_host          = "...my_tunnel_host..."
        tunnel_port          = 22
        tunnel_user          = "...my_tunnel_user..."
        tunnel_user_password = "...my_tunnel_user_password..."
      }
      ssh_key_authentication = {
        ssh_key     = "...my_ssh_key..."
        tunnel_host = "...my_tunnel_host..."
        tunnel_port = 22
        tunnel_user = "...my_tunnel_user..."
      }
    }
    upsert = false
  }
  definition_id = "fa3d17d3-6d2d-4bd3-a934-fcd7370e225f"
  name          = "...my_name..."
  workspace_id  = "9de55ce7-1e79-4018-9818-c9bf634debae"
}