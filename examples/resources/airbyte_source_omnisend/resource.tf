resource "airbyte_source_omnisend" "my_source_omnisend" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "b05c5b71-1236-41f2-ad47-b86cdec1a2bc"
  name          = "Dr. Olivia Lueilwitz"
  secret_id     = "...my_secret_id..."
  workspace_id  = "5e3ceb6c-910d-4c95-a96c-b5f3bc4b3253"
}