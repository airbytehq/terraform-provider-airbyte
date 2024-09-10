resource "airbyte_source_bamboo_hr" "my_source_bamboohr" {
  configuration = {
    api_key                               = "...my_api_key..."
    custom_reports_fields                 = "...my_custom_reports_fields..."
    custom_reports_include_default_fields = true
    start_date                            = "2022-01-27T18:56:04.985Z"
    subdomain                             = "...my_subdomain..."
  }
  definition_id = "f8882a19-738b-4218-b704-94da21b79cfd"
  name          = "Ira Padberg"
  secret_id     = "...my_secret_id..."
  workspace_id  = "821deb72-64da-4d9e-9fb5-3126691bfb5d"
}