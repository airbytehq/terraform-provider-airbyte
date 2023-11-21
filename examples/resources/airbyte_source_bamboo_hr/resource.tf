resource "airbyte_source_bamboo_hr" "my_source_bamboohr" {
  configuration = {
    api_key                               = "...my_api_key..."
    custom_reports_fields                 = "...my_custom_reports_fields..."
    custom_reports_include_default_fields = true
    subdomain                             = "...my_subdomain..."
  }
  definition_id = "1aa37367-271c-478a-9aa9-603df323c7d7"
  name          = "Joel Harber"
  secret_id     = "...my_secret_id..."
  workspace_id  = "f8882a19-738b-4218-b704-94da21b79cfd"
}