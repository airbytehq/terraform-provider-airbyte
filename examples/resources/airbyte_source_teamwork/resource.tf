resource "airbyte_source_teamwork" "my_source_teamwork" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    password              = "...my_password..."
    site_name             = "...my_site_name..."
    start_date            = "2022-08-16T08:27:22.093Z"
    username              = "...my_username..."
  }
  definition_id = "7fcd456d-2c13-4437-a05b-cf436699a519"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "931a913e-78ef-4c22-9115-9d8a90d023d2"
}