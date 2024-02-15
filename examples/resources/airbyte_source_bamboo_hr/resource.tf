resource "airbyte_source_bamboo_hr" "my_source_bamboohr" {
  configuration = {
    api_key                               = "...my_api_key..."
    custom_reports_fields                 = "...my_custom_reports_fields..."
    custom_reports_include_default_fields = true
    subdomain                             = "...my_subdomain..."
  }
  definition_id = "d078a361-2fcb-45a7-bdd8-54e0c39c22fe"
  name          = "Caroline Steuber"
  secret_id     = "...my_secret_id..."
  workspace_id  = "7adf1072-5ff7-4f1a-a7e8-fd2f193d4f9a"
}