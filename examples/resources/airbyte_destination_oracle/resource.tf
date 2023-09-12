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
    username = "Viviane_Aufderhar"
  }
  name         = "Tammy Medhurst"
  workspace_id = "3698f447-f603-4e8b-845e-80ca55efd20e"
}