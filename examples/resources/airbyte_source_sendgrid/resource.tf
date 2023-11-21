resource "airbyte_source_sendgrid" "my_source_sendgrid" {
  configuration = {
    apikey     = "...my_apikey..."
    start_time = "2020-01-01T01:01:01Z"
  }
  definition_id = "37ec3d2a-b419-48d2-afe5-e34c931e7a72"
  name          = "Toby McGlynn"
  secret_id     = "...my_secret_id..."
  workspace_id  = "22c4d080-cde0-439d-95e8-c5778ddd1091"
}