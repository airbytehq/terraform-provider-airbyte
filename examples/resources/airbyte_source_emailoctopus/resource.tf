resource "airbyte_source_emailoctopus" "my_source_emailoctopus" {
  configuration = {
    api_key     = "...my_api_key..."
    source_type = "emailoctopus"
  }
  name         = "Miss Nelson Robel"
  secret_id    = "...my_secret_id..."
  workspace_id = "ee2c8c6c-e611-4fee-b1c7-cbdb6eec7437"
}