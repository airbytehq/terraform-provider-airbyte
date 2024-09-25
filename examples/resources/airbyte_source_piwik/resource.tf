resource "airbyte_source_piwik" "my_source_piwik" {
  configuration = {
    client_id       = "...my_client_id..."
    client_secret   = "...my_client_secret..."
    organization_id = "...my_organization_id..."
  }
  definition_id = "cf2b6755-1109-40ec-ac18-f2017e88b7a8"
  name          = "Tonya Gutkowski"
  secret_id     = "...my_secret_id..."
  workspace_id  = "5e84efb6-a935-4326-9882-dc6ea377e2f3"
}