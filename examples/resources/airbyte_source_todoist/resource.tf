resource "airbyte_source_todoist" "my_source_todoist" {
  configuration = {
    source_type = "todoist"
    token       = "...my_token..."
  }
  name         = "Merle Keebler Jr."
  workspace_id = "e9db3ad4-c6b0-4310-8d9c-337473082b94"
}