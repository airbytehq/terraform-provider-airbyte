resource "airbyte_source_convex" "my_source_convex" {
  configuration = {
    access_key     = "...my_access_key..."
    deployment_url = "https://murky-swan-635.convex.cloud"
  }
  name         = "Leroy Cormier Jr."
  secret_id    = "...my_secret_id..."
  workspace_id = "1e265eeb-c230-4b15-894c-c21854edb75e"
}