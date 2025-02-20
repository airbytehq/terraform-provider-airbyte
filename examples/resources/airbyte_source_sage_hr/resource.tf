resource "airbyte_source_sage_hr" "my_source_sagehr" {
  configuration = {
    api_key   = "...my_api_key..."
    subdomain = "...my_subdomain..."
  }
  definition_id = "3ea1b51b-d9a3-4113-a552-73397b9ddbb9"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "f507fdd2-54cc-4890-aa0a-5be1fb76f543"
}