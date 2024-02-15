resource "airbyte_source_smartengage" "my_source_smartengage" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "3d24dfd3-d512-4342-b997-d059d38a2e5f"
  name          = "Terrell Mueller"
  secret_id     = "...my_secret_id..."
  workspace_id  = "41876fa0-cbc1-4b99-ae1e-96056605b0d5"
}