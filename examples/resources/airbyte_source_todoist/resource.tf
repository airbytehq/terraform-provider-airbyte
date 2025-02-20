resource "airbyte_source_todoist" "my_source_todoist" {
  configuration = {
    token = "...my_token..."
  }
  definition_id = "9d21d09c-d3e9-4046-a593-2de1173af39b"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "dcd79d11-0e19-4324-bbf1-881769d03e3a"
}