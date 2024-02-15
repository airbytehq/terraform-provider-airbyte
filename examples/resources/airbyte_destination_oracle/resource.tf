resource "airbyte_destination_oracle" "my_destination_oracle" {
  configuration = {
    host            = "...my_host..."
    jdbc_url_params = "...my_jdbc_url_params..."
    password        = "...my_password..."
    port            = 1521
    schema          = "airbyte"
    sid             = "...my_sid..."
    tunnel_method = {
      no_tunnel = {}
    }
    username = "Pearl82"
  }
  definition_id = "fc1b2798-db19-4e64-b83f-63d348370e17"
  name          = "Lorena Schowalter"
  workspace_id  = "4f32d3e1-92a8-4a43-80f2-9f7cbd12b320"
}