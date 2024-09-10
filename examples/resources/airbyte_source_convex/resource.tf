resource "airbyte_source_convex" "my_source_convex" {
  configuration = {
    access_key     = "...my_access_key..."
    deployment_url = "https://cluttered-owl-337.convex.cloud"
  }
  definition_id = "da11e10d-002e-41c7-bf9b-a1e39a63be20"
  name          = "Jermaine Ortiz"
  secret_id     = "...my_secret_id..."
  workspace_id  = "93eb808e-c8c0-4a1f-9167-1a56d068f4b5"
}