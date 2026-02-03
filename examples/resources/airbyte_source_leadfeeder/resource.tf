resource "airbyte_source_leadfeeder" "my_source_leadfeeder" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_token             = "...my_api_token..."
    start_date            = "2021-09-10T06:23:45.979Z"
  }
  definition_id = "a98397a0-4445-418b-8fb0-924577a34e5f"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "5ea2c0d3-1fe7-4403-a975-4882a71a7d71"
}