resource "airbyte_source_dremio" "my_source_dremio" {
  configuration = {
    api_key  = "...my_api_key..."
    base_url = "...my_base_url..."
  }
  definition_id = "da11e10d-002e-41c7-bf9b-a1e39a63be20"
  name          = "Jermaine Ortiz"
  secret_id     = "...my_secret_id..."
  workspace_id  = "93eb808e-c8c0-4a1f-9167-1a56d068f4b5"
}