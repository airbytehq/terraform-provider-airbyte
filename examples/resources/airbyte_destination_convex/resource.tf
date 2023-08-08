resource "airbyte_destination_convex" "my_destination_convex" {
  configuration = {
    access_key       = "...my_access_key..."
    deployment_url   = "https://cluttered-owl-337.convex.cloud"
    destination_type = "convex"
  }
  name         = "Casey Stracke"
  workspace_id = "bf486333-23f9-4b77-b3a4-100674ebf692"
}