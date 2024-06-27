resource "airbyte_source_convex" "my_source_convex" {
  configuration = {
    access_key     = "...my_access_key..."
    deployment_url = "https://cluttered-owl-337.convex.cloud"
  }
  definition_id = "84c3fbc2-4f86-40fc-a851-98c116e72658"
  name          = "Kellie Torphy"
  secret_id     = "...my_secret_id..."
  workspace_id  = "70fa8ec1-ba80-44bd-a457-a40e8851a354"
}