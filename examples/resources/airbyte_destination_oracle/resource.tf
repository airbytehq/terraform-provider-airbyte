resource "airbyte_destination_oracle" "my_destination_oracle" {
  configuration = {
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 1521
    schema          = "airbyte"
    sid             = "...my_sid..."
    tunnel_method = {
      destination_oracle_no_tunnel = {}
    }
    username = "Herminio18"
  }
  name         = "Ashley Wisoky"
  workspace_id = "c0130565-53a4-4e50-8dde-3bcff11f630f"
}