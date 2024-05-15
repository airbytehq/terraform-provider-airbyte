resource "airbyte_source_bamboo_hr" "my_source_bamboohr" {
  configuration = {
    api_key                               = "...my_api_key..."
    custom_reports_fields                 = "...my_custom_reports_fields..."
    custom_reports_include_default_fields = true
    subdomain                             = "...my_subdomain..."
  }
  definition_id = "7dcf4f64-874e-462c-98d8-792fd48887cb"
  name          = "Toni Schaefer"
  secret_id     = "...my_secret_id..."
  workspace_id  = "ec8b4573-d66d-4007-a52a-2e4396e7403e"
}