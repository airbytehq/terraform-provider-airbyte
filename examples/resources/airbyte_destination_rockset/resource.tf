resource "airbyte_destination_rockset" "my_destination_rockset" {
  configuration = {
    api_key          = "...my_api_key..."
    api_server       = "...my_api_server..."
    destination_type = "rockset"
    workspace        = "my_workspace"
  }
  name         = "Gloria Skiles"
  workspace_id = "645b08b6-1891-4baa-8fe1-ade008e6f8c5"
}