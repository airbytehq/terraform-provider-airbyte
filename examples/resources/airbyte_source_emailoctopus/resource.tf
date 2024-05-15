resource "airbyte_source_emailoctopus" "my_source_emailoctopus" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "b58122af-6a8a-4c65-936a-205f1e4d309e"
  name          = "Mr. Darrell Lowe"
  secret_id     = "...my_secret_id..."
  workspace_id  = "94fbd866-314c-4ace-82f9-6b833556f7e4"
}