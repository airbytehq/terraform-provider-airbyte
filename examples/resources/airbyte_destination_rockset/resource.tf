resource "airbyte_destination_rockset" "my_destination_rockset" {
  configuration = {
    api_key          = "...my_api_key..."
    api_server       = "...my_api_server..."
    destination_type = "rockset"
    workspace        = "commons"
  }
  name         = "Miss Nora Moen"
  workspace_id = "a0fe1ade-008e-46f8-85f3-50d8cdb5a341"
}