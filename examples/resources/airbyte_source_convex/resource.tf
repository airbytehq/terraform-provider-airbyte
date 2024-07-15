resource "airbyte_source_convex" "my_source_convex" {
  configuration = {
    access_key     = "...my_access_key..."
    deployment_url = "https://cluttered-owl-337.convex.cloud"
  }
  definition_id = "0961d84c-3fbc-424f-860f-ce85198c116e"
  name          = "Nicole Howe"
  secret_id     = "...my_secret_id..."
  workspace_id  = "1ee6770f-a8ec-41ba-804b-d6457a40e885"
}