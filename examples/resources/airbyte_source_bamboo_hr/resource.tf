resource "airbyte_source_bamboo_hr" "my_source_bamboohr" {
  configuration = {
    api_key                               = "...my_api_key..."
    custom_reports_fields                 = "...my_custom_reports_fields..."
    custom_reports_include_default_fields = true
    source_type                           = "bamboo-hr"
    subdomain                             = "...my_subdomain..."
  }
  name         = "Ralph Rau"
  secret_id    = "...my_secret_id..."
  workspace_id = "1b36a080-88d1-400e-bada-200ef0422eb2"
}