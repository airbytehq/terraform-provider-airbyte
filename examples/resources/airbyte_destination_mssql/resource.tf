resource "airbyte_destination_mssql" "my_destination_mssql" {
  configuration = {
    database        = "...my_database..."
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 1433
    raw_data_schema = "...my_raw_data_schema..."
    schema          = "public"
    ssl_method = {
      encrypted_trust_server_certificate = {
        # ...
      }
      encrypted_verify_certificate = {
        host_name_in_certificate = "...my_host_name_in_certificate..."
      }
      unencrypted = {
        # ...
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
  definition_id = "a282fec3-7b94-4274-9620-860fbc85f5d6"
  name          = "...my_name..."
  workspace_id  = "2e9afd8a-c9ca-4f91-bf9f-71f1a7c362df"
}