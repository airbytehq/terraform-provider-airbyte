resource "airbyte_source_convex" "my_source_convex" {
  configuration = {
    access_key     = "...my_access_key..."
    deployment_url = "https://cluttered-owl-337.convex.cloud"
  }
  definition_id = "39e6abf1-7c2d-450c-b6e6-ff332bdf1457"
  name          = "Regina Wilkinson"
  secret_id     = "...my_secret_id..."
  workspace_id  = "b81a7466-bf78-4b3b-bded-e547fc7c1cb5"
}