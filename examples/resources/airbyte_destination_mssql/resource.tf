resource "airbyte_destination_mssql" "my_destination_mssql" {
  configuration = {
    database         = "...my_database..."
    destination_type = "mssql"
    host             = "...my_host..."
    jdbc_url_params  = "...my_jdbc_url_params..."
    password         = "...my_password..."
    port             = 1433
    schema           = "public"
    ssl_method = {
      destination_mssql_ssl_method_encrypted_trust_server_certificate_ = {
        ssl_method = "encrypted_trust_server_certificate"
      }
    }
    tunnel_method = {
      destination_mssql_ssh_tunnel_method_no_tunnel = {
        tunnel_method = "NO_TUNNEL"
      }
    }
    username = "Desiree_Yost"
  }
  name         = "Bert Treutel DVM"
  workspace_id = "33317fe3-5b60-4eb1-aa42-6555ba3c2874"
}