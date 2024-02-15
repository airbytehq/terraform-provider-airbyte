resource "airbyte_source_rss" "my_source_rss" {
  configuration = {
    url = "...my_url..."
  }
  definition_id = "fcb06318-4072-4944-8d2b-8965caababee"
  name          = "Clint Jaskolski"
  secret_id     = "...my_secret_id..."
  workspace_id  = "8e7243c0-21bc-4073-abf4-dfebd414e5a6"
}