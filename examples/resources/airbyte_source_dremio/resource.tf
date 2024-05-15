resource "airbyte_source_dremio" "my_source_dremio" {
  configuration = {
    api_key  = "...my_api_key..."
    base_url = "...my_base_url..."
  }
  definition_id = "23345c94-9a95-4559-b5a3-4ff680c88d8e"
  name          = "Dominick Koss"
  secret_id     = "...my_secret_id..."
  workspace_id  = "1721e422-7fd5-41b6-aec3-45b5c1bae747"
}