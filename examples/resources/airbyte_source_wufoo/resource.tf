resource "airbyte_source_wufoo" "my_source_wufoo" {
  configuration = {
    api_key   = "...my_api_key..."
    subdomain = "...my_subdomain..."
  }
  definition_id = "38e9aa0f-2908-46ae-8147-b91ef7794f6b"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "f51524a5-aec5-4132-8515-8e38f6d027fa"
}