resource "airbyte_source_convex" "my_source_convex" {
  configuration = {
    access_key     = "...my_access_key..."
    deployment_url = "https://murky-swan-635.convex.cloud"
    source_type    = "convex"
  }
  name         = "Jody Gutmann"
  secret_id    = "...my_secret_id..."
  workspace_id = "cc699171-b51c-41bd-b1cf-4b888ebdfc4c"
}