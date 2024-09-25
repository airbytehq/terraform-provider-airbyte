resource "airbyte_destination_convex" "my_destination_convex" {
  configuration = {
    access_key     = "...my_access_key..."
    deployment_url = "https://murky-swan-635.convex.cloud"
  }
  definition_id = "73c0eb82-2361-43d2-bce8-75293aec4aa1"
  name          = "Jennifer Rogahn I"
  workspace_id  = "922581a8-8452-4de7-835e-b92a9e952da2"
}