resource "airbyte_source_productive" "my_source_productive" {
  configuration = {
    api_key         = "...my_api_key..."
    organization_id = "...my_organization_id..."
  }
  definition_id = "cfe6f34a-cc65-4c56-b5fa-6778e44b91c6"
  name          = "Mr. Cathy Shanahan"
  secret_id     = "...my_secret_id..."
  workspace_id  = "040ba03e-b3c0-4afc-83c8-fa6eafbbc8e3"
}