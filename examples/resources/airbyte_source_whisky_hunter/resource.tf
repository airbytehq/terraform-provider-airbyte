resource "airbyte_source_whisky_hunter" "my_source_whiskyhunter" {
  configuration = {
    source_type = "whisky-hunter"
  }
  name         = "Miss Terrence Kulas"
  secret_id    = "...my_secret_id..."
  workspace_id = "f46bca11-06fe-4965-b711-d08cf88ec9f7"
}