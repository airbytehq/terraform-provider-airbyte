resource "airbyte_destination_convex" "my_destination_convex" {
  configuration = {
    access_key       = "...my_access_key..."
    deployment_url   = "https://cluttered-owl-337.convex.cloud"
    destination_type = "convex"
  }
  name         = "Alejandro Purdy DDS"
  workspace_id = "28909b3f-e49a-48d9-8bf4-8633323f9b77"
}