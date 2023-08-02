resource "airbyte_source_todoist" "my_source_todoist" {
  configuration = {
    source_type = "todoist"
    token       = "...my_token..."
  }
  name         = "Pauline Kozey IV"
  secret_id    = "...my_secretId..."
  workspace_id = "2b94f2ab-1fd5-4671-a9c3-26350a467143"
}