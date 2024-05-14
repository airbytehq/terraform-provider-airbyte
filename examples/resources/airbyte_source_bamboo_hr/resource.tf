resource "airbyte_source_bamboo_hr" "my_source_bamboohr" {
  configuration = {
    api_key                               = "...my_api_key..."
    custom_reports_fields                 = "...my_custom_reports_fields..."
    custom_reports_include_default_fields = false
    subdomain                             = "...my_subdomain..."
  }
  definition_id = "8a1edcb3-6cda-43d5-9cbc-15623ec6453c"
  name          = "Glen Schmidt"
  secret_id     = "...my_secret_id..."
  workspace_id  = "f0d0e20d-e16b-48da-bb81-43f851cf99c7"
}