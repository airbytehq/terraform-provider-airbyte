resource "airbyte_source_jamf_pro" "my_source_jamfpro" {
  configuration = {
    password  = "...my_password..."
    subdomain = "...my_subdomain..."
    username  = "...my_username..."
  }
  definition_id = "1826146b-1cbf-4a54-bb59-711ee9502fea"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "2917a875-602d-43a7-b45c-3150aecf8c29"
}