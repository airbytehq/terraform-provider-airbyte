resource "airbyte_source_bamboo_hr" "my_source_bamboohr" {
  configuration = {
    additional_properties                 = "{ \"see\": \"documentation\" }"
    api_key                               = "...my_api_key..."
    custom_reports_fields                 = "...my_custom_reports_fields..."
    custom_reports_include_default_fields = true
    employee_fields                       = "firstName,lastName"
    start_date                            = "2020-10-30T09:40:26.318Z"
    subdomain                             = "...my_subdomain..."
  }
  definition_id = "90916976-a132-4ce9-8bce-82a03dd58788"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "614b3622-2ddb-4a8f-bddb-ecca8edfe9b9"
}