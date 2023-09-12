resource "airbyte_source_zoom" "my_source_zoom" {
  configuration = {
    jwt_token   = "...my_jwt_token..."
    source_type = "zoom"
  }
  name         = "Alexis Gutmann IV"
  secret_id    = "...my_secret_id..."
  workspace_id = "0aa10418-6ec7-459e-82f3-702c5c8e2d30"
}