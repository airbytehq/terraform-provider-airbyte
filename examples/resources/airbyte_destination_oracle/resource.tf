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
    username = "Emmalee.Towne89"
  }
  definition_id = "895c9212-6184-452d-9432-f33897fec4ca"
  name          = "Adrienne Lockman"
  workspace_id  = "bf882725-c3c6-4bc3-9a6d-3f396b39ea0e"
}