resource "airbyte_source_bamboo_hr" "my_source_bamboohr" {
  configuration = {
    api_key                               = "...my_api_key..."
    custom_reports_fields                 = "...my_custom_reports_fields..."
    custom_reports_include_default_fields = true
    source_type                           = "bamboo-hr"
    subdomain                             = "...my_subdomain..."
  }
  name         = "Thelma Wisoky"
  secret_id    = "...my_secret_id..."
  workspace_id = "a9e06bee-4825-4c1f-80e1-15c80bff9185"
}