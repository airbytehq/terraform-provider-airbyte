resource "airbyte_destination_cumulio" "my_destination_cumulio" {
  configuration = {
    api_host         = "...my_api_host..."
    api_key          = "...my_api_key..."
    api_token        = "...my_api_token..."
    destination_type = "cumulio"
  }
  name         = "Allen Parisian Jr."
  workspace_id = "0674ebf6-9280-4d1b-a77a-89ebf737ae42"
}