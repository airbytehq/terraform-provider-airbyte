resource "airbyte_source_whisky_hunter" "my_source_whiskyhunter" {
  configuration = {
    source_type = "whisky-hunter"
  }
  name         = "Curtis Dickens"
  secret_id    = "...my_secret_id..."
  workspace_id = "b0ce8aa6-5432-4a98-aeb7-e14ca5640891"
}