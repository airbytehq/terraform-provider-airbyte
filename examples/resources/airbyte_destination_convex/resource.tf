resource "airbyte_destination_convex" "my_destination_convex" {
  configuration = {
    access_key       = "...my_access_key..."
    deployment_url   = "https://murky-swan-635.convex.cloud"
    destination_type = "convex"
  }
  name         = "Melba Toy"
  workspace_id = "8b711e5b-7fd2-4ed0-a892-1cddc692601f"
}