resource "airbyte_destination_cumulio" "my_destination_cumulio" {
  configuration = {
    api_host  = "...my_api_host..."
    api_key   = "...my_api_key..."
    api_token = "...my_api_token..."
  }
  name         = "Pat Fadel"
  workspace_id = "fa18b5ab-2eb4-4f41-a22e-39b661a09af7"
}