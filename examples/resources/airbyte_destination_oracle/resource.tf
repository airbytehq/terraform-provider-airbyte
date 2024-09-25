resource "airbyte_destination_oracle" "my_destination_oracle" {
  configuration = {
    encryption = {
      native_network_encryption_nne = {
        encryption_algorithm = "3DES168"
      }
    }
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 1521
    raw_data_schema = "...my_raw_data_schema..."
    schema          = "airbyte"
    sid             = "...my_sid..."
    tunnel_method = {
      no_tunnel = {}
    }
    username = "Dolores.Cummerata25"
  }
  definition_id = "b7b603cc-8cd8-487e-b603-813ef7fc0d17"
  name          = "Eloise Hilpert"
  workspace_id  = "14549f12-4218-42d1-9ef4-e895c9212618"
}