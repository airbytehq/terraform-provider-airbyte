resource "airbyte_source_dremio" "my_source_dremio" {
  configuration = {
    api_key  = "...my_api_key..."
    base_url = "...my_base_url..."
  }
  definition_id = "4b8db33d-2b3a-427b-8b34-2a10fbc47ca7"
  name          = "Lucy Bruen"
  secret_id     = "...my_secret_id..."
  workspace_id  = "037c7eef-972d-4f3c-94a3-49fde89ab276"
}