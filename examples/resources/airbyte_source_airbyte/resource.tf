resource "airbyte_source_airbyte" "my_source_airbyte" {
  configuration = {
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
    start_date    = "2022-03-19T07:46:59.910Z"
  }
  definition_id = "0dabba6e-f9fc-43c3-b44f-d252e57aa673"
  name          = "Steve Luettgen"
  secret_id     = "...my_secret_id..."
  workspace_id  = "9f0c220e-39e1-40d6-af09-fb849b0bdf3d"
}