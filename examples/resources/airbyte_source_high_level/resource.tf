resource "airbyte_source_high_level" "my_source_highlevel" {
  configuration = {
    api_key     = "...my_api_key..."
    location_id = "...my_location_id..."
    start_date  = "2022-12-22T20:21:14.303Z"
  }
  definition_id = "6231c57f-d8f9-4d1b-aac6-e05b1e50c144"
  name          = "Marsha Stamm"
  secret_id     = "...my_secret_id..."
  workspace_id  = "1cdd98f8-1ede-4ee1-be4e-723eeaf419bc"
}