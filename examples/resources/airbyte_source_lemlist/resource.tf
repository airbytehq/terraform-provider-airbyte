resource "airbyte_source_lemlist" "my_source_lemlist" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "731c6e6b-c1ca-4f16-aaee-78925477f387"
  name          = "Mr. Clyde Dibbert"
  secret_id     = "...my_secret_id..."
  workspace_id  = "ba4aed29-95c6-463b-ad13-c6e3bbb93bd4"
}