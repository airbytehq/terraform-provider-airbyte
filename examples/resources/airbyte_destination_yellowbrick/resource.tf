resource "airbyte_destination_yellowbrick" "my_destination_yellowbrick" {
  configuration = {
    database        = "...my_database..."
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 5432
    schema          = "public"
    ssl             = true
    ssl_mode = {
      allow = {
        # ...
      }
      disable = {
        # ...
      }
      prefer = {
        # ...
      }
      require = {
        # ...
      }
      verify_ca = {
        ca_certificate      = "...my_ca_certificate..."
        client_key_password = "...my_client_key_password..."
      }
      verify_full = {
        ca_certificate      = "...my_ca_certificate..."
        client_certificate  = "...my_client_certificate..."
        client_key          = "...my_client_key..."
        client_key_password = "...my_client_key_password..."
      }
    }
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
    username = "...my_username..."
  }
  definition_id = "81a773ac-fba0-424f-a74b-6a91a45ce8fe"
  name          = "...my_name..."
  workspace_id  = "2d4bfbc0-aa6b-42b1-9222-6303d0c9671f"
}