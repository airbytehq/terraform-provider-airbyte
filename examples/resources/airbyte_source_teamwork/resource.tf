resource "airbyte_source_teamwork" "my_source_teamwork" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    password              = "...my_password..."
    site_name             = "...my_site_name..."
    start_date            = "2022-08-16T08:27:22.093Z"
    username              = "...my_username..."
  }
  definition_id = "d3834fd1-9cac-4a69-a99c-93ba5c3a85ff"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "931a913e-78ef-4c22-9115-9d8a90d023d2"
}