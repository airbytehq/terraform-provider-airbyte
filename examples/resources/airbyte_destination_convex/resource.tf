resource "airbyte_destination_convex" "my_destination_convex" {
  configuration = {
    access_key     = "...my_access_key..."
    deployment_url = "https://cluttered-owl-337.convex.cloud"
  }
  definition_id = "335e03ab-ebb7-41b5-8e87-2ec68b6d2a9c"
  name          = "Patsy Powlowski"
  workspace_id  = "6941566f-22fd-430a-a8af-8c1d27b3e573"
}