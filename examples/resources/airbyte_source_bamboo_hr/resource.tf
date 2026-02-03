resource "airbyte_source_bamboo_hr" "my_source_bamboohr" {
  configuration = {
    additional_properties                 = "{ \"see\": \"documentation\" }"
    api_key                               = "...my_api_key..."
    custom_reports_fields                 = "...my_custom_reports_fields..."
    custom_reports_include_default_fields = false
    employee_fields                       = "...my_employee_fields..."
    start_date                            = "2020-10-30T09:40:26.318Z"
    subdomain                             = "...my_subdomain..."
  }
  definition_id = "02966399-c9f7-4288-b520-e7cbc0205626"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "614b3622-2ddb-4a8f-bddb-ecca8edfe9b9"
}