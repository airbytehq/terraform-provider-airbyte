resource "airbyte_destination_convex" "my_destination_convex" {
  configuration = {
    access_key     = "...my_access_key..."
    deployment_url = "https://murky-swan-635.convex.cloud"
  }
  definition_id = "3eb4d99c-11fa-4561-a259-fc88e0c2f8f4"
  name          = "...my_name..."
  workspace_id  = "c753766d-fb7a-4ec8-a514-3a8d07d6f56b"
}