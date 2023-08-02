resource "airbyte_source_whisky_hunter" "my_source_whiskyhunter" {
  configuration = {
    source_type = "whisky-hunter"
  }
  name         = "Shaun Johnston"
  secret_id    = "...my_secretId..."
  workspace_id = "f5abd648-7c5f-4c2b-862a-00bef69e1001"
}