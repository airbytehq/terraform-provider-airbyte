resource "airbyte_source_secoda" "my_source_secoda" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "3da0917a-6151-4fac-be8e-c69babb33897"
  name          = "Dr. Alexandra Sipes"
  secret_id     = "...my_secret_id..."
  workspace_id  = "39af2319-a6f8-4898-974d-7cd0670b63c6"
}