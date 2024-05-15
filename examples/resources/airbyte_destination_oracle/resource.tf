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
    username = "Eleanore_Toy"
  }
  definition_id = "5c921261-8452-4d14-b2f3-3897fec4ca4c"
  name          = "Garrett Gerhold"
  workspace_id  = "882725c3-c6bc-439a-ad3f-396b39ea0e10"
}