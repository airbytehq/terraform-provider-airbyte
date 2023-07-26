resource "airbyte_source_smaily" "my_source_smaily" {
  configuration = {
    api_password  = "...my_api_password..."
    api_subdomain = "...my_api_subdomain..."
    api_username  = "...my_api_username..."
    source_type   = "smaily"
  }
  name         = "Doug Marvin"
  workspace_id = "3398dafb-42a8-4d63-b88e-4d8039ea5f9b"
}