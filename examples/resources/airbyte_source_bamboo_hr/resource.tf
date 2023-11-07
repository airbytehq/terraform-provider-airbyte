resource "airbyte_source_bamboo_hr" "my_source_bamboohr" {
  configuration = {
    api_key                               = "...my_api_key..."
    custom_reports_fields                 = "...my_custom_reports_fields..."
    custom_reports_include_default_fields = true
    subdomain                             = "...my_subdomain..."
  }
  name         = "Olga Crooks"
  secret_id    = "...my_secret_id..."
  workspace_id = "6ed560cd-3f9e-41f9-aaf9-a8e2157a8560"
}