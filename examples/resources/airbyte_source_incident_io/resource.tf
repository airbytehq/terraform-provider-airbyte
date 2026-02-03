resource "airbyte_source_incident_io" "my_source_incidentio" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    api_key               = "...my_api_key..."
  }
  definition_id = "2cc2d8f0-eed5-4156-b150-54374f356530"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "f4f922e6-1171-40a1-b900-be61f6c61dd8"
}