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
    username = "Jimmy.Luettgen63"
  }
  name         = "Dewey Leannon"
  workspace_id = "c0b2f2fb-7b19-44a2-b6b2-6916fe1f08f4"
}