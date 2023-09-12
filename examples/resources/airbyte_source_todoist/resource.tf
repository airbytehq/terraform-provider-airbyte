resource "airbyte_source_todoist" "my_source_todoist" {
  configuration = {
    source_type = "todoist"
    token       = "...my_token..."
  }
  name         = "Hope Collins"
  secret_id    = "...my_secret_id..."
  workspace_id = "502bafb2-cbc4-4635-95e6-5da028c3e951"
}