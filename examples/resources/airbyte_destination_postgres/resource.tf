resource "airbyte_destination_postgres" "my_destination_postgres" {
  configuration = {
    database            = "...my_database..."
    disable_type_dedupe = true
    drop_cascade        = false
    host                = "...my_host..."
    jdbc_url_params     = "...my_jdbc_url_params..."
    password            = "...my_password..."
    port                = 5432
    raw_data_schema     = "...my_raw_data_schema..."
    schema              = "public"
    ssl                 = true
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
    unconstrained_number = false
    username             = "...my_username..."
  }
  definition_id = "6cc561e7-8b38-4621-919b-0687fe3682b7"
  name          = "...my_name..."
  workspace_id  = "2b2d880a-23fd-4463-8627-0a837b28bb7e"
}