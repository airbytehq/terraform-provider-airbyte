resource "airbyte_source_todoist" "my_source_todoist" {
  configuration = {
    source_type = "todoist"
    token       = "...my_token..."
  }
  name         = "Tracy Senger"
  secret_id    = "...my_secret_id..."
  workspace_id = "78673e13-a12a-46b9-9249-4594487f5c84"
}