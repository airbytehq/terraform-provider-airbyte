resource "airbyte_source_convex" "my_source_convex" {
  configuration = {
    access_key     = "...my_access_key..."
    deployment_url = "https://murky-swan-635.convex.cloud"
  }
  definition_id = "581ee677-0fa8-4ec1-ba80-4bd6457a40e8"
  name          = "Corey Braun"
  secret_id     = "...my_secret_id..."
  workspace_id  = "541ba6f5-d90d-45a8-a349-e2072bdff381"
}