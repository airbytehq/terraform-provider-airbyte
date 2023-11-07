resource "airbyte_destination_convex" "my_destination_convex" {
  configuration = {
    access_key     = "...my_access_key..."
    deployment_url = "https://cluttered-owl-337.convex.cloud"
  }
  name         = "Alton Bernier"
  workspace_id = "5e15759d-85e2-4c27-a398-b4688adb4265"
}