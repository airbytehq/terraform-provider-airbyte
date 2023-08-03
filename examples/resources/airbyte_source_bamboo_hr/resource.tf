resource "airbyte_source_bamboo_hr" "my_source_bamboohr" {
  configuration = {
    api_key                               = "...my_api_key..."
    custom_reports_fields                 = "...my_custom_reports_fields..."
    custom_reports_include_default_fields = true
    source_type                           = "bamboo-hr"
    subdomain                             = "...my_subdomain..."
  }
  name         = "Phyllis Denesik"
  workspace_id = "2164cf9a-b836-46c7-a3ff-da9e06bee482"
}