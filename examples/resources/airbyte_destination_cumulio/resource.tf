resource "airbyte_destination_cumulio" "my_destination_cumulio" {
  configuration = {
    api_host         = "...my_api_host..."
    api_key          = "...my_api_key..."
    api_token        = "...my_api_token..."
    destination_type = "cumulio"
  }
  name         = "Clyde Kling"
  workspace_id = "0d5f0d30-c5fb-4b25-8705-3202c73d5fe9"
}