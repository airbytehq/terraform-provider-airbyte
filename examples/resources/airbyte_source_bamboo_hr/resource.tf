resource "airbyte_source_bamboo_hr" "my_source_bamboohr" {
  configuration = {
    api_key                               = "...my_api_key..."
    custom_reports_fields                 = "...my_custom_reports_fields..."
    custom_reports_include_default_fields = false
    subdomain                             = "...my_subdomain..."
  }
  definition_id = "0959a4fa-50e8-407c-86bd-0cbf5314eea0"
  name          = "Miss Oliver Crooks"
  secret_id     = "...my_secret_id..."
  workspace_id  = "37367271-c78a-49aa-9603-df323c7d7845"
}