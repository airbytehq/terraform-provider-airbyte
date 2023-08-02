resource "airbyte_destination_cumulio" "my_destination_cumulio" {
  configuration = {
    api_host         = "...my_api_host..."
    api_key          = "...my_api_key..."
    api_token        = "...my_api_token..."
    destination_type = "cumulio"
  }
  name         = "Miss Paul Steuber"
  workspace_id = "77a89ebf-737a-4e42-83ce-5e6a95d8a0d4"
}