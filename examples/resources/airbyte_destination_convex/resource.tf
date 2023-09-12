resource "airbyte_destination_convex" "my_destination_convex" {
  configuration = {
    access_key       = "...my_access_key..."
    deployment_url   = "https://murky-swan-635.convex.cloud"
    destination_type = "convex"
  }
  name         = "Joyce Kertzmann"
  workspace_id = "4c8b711e-5b7f-4d2e-9028-921cddc69260"
}