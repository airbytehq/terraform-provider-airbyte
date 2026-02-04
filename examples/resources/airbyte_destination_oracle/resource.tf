resource "airbyte_destination_oracle" "my_destination_oracle" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    host                  = "...my_host..."
    jdbc_url_params       = "...my_jdbc_url_params..."
    password              = "...my_password..."
    port                  = 1521
    raw_data_schema       = "...my_raw_data_schema..."
    schema                = "airbyte"
    sid                   = "...my_sid..."
    tunnel_method = {
      ssh_key_authentication = {
        ssh_key     = "...my_ssh_key..."
        tunnel_host = "...my_tunnel_host..."
        tunnel_port = 22
        tunnel_user = "...my_tunnel_user..."
      }
    }
    username = "...my_username..."
  }
  definition_id = "28ddc2bd-35a7-4a51-966c-b9e88351add3"
  name          = "...my_name..."
  workspace_id  = "6900342e-4f38-4480-a5e0-1dce84f57ee6"
}