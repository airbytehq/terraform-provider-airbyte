resource "airbyte_destination_oracle" "my_destination_oracle" {
  configuration = {
    destination_type = "oracle"
    host             = "...my_host..."
    jdbc_url_params  = "...my_jdbc_url_params..."
    password         = "...my_password..."
    port             = 1521
    schema           = "airbyte"
    sid              = "...my_sid..."
    tunnel_method = {
      destination_oracle_ssh_tunnel_method_no_tunnel = {
        tunnel_method = "NO_TUNNEL"
      }
    }
    username = "Duncan69"
  }
  name         = "Diane Mayer"
  workspace_id = "8abf603a-79f9-4dfe-8ab7-da8a50ce187f"
}