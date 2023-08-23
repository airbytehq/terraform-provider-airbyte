resource "airbyte_source_smaily" "my_source_smaily" {
  configuration = {
    api_password  = "...my_api_password..."
    api_subdomain = "...my_api_subdomain..."
    api_username  = "...my_api_username..."
    source_type   = "smaily"
  }
  name         = "Lynda Thiel"
  secret_id    = "...my_secret_id..."
  workspace_id = "cc50c8a3-512c-4737-8489-30750a00e966"
}