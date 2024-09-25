resource "airbyte_source_bamboo_hr" "my_source_bamboohr" {
  configuration = {
    api_key                               = "...my_api_key..."
    custom_reports_fields                 = "...my_custom_reports_fields..."
    custom_reports_include_default_fields = true
    start_date                            = "2022-07-14T18:09:20.327Z"
    subdomain                             = "...my_subdomain..."
  }
  definition_id = "f193d4f9-ab29-4a2f-8317-dec4e3eab02c"
  name          = "Ms. Cesar McLaughlin"
  secret_id     = "...my_secret_id..."
  workspace_id  = "23df16a0-cc49-4919-82a6-82b0a7074f01"
}