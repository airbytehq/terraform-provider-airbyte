resource "airbyte_destination_oracle" "my_destination_oracle" {
  configuration = {
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
    username = "Louvenia.Bartell4"
  }
  definition_id = "16590e1a-2bc7-4de0-bf63-7374915d3efc"
  name          = "Kara Stroman"
  workspace_id  = "0e36acc1-e6f1-4291-9604-b55b326e06d2"
}