resource "airbyte_source_leadfeeder" "my_source_leadfeeder" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_token             = "...my_api_token..."
    start_date            = "2021-09-10T06:23:45.979Z"
  }
  definition_id = "daa0fe89-6e72-479e-a314-5e65cfc7103c"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "5ea2c0d3-1fe7-4403-a975-4882a71a7d71"
}