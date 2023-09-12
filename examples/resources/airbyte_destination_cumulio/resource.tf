resource "airbyte_destination_cumulio" "my_destination_cumulio" {
  configuration = {
    api_host         = "...my_api_host..."
    api_key          = "...my_api_key..."
    api_token        = "...my_api_token..."
    destination_type = "cumulio"
  }
  name         = "Ebony Predovic"
  workspace_id = "6b0d5f0d-30c5-4fbb-a587-053202c73d5f"
}