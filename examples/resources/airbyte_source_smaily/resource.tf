resource "airbyte_source_smaily" "my_source_smaily" {
  configuration = {
    api_password  = "...my_api_password..."
    api_subdomain = "...my_api_subdomain..."
    api_username  = "...my_api_username..."
    source_type   = "smaily"
  }
  name         = "David Dooley"
  secret_id    = "...my_secretId..."
  workspace_id = "a5f9b18a-244f-4d61-9039-dacd38ed0dc6"
}