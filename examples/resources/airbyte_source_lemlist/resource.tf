resource "airbyte_source_lemlist" "my_source_lemlist" {
  configuration = {
    api_key     = "...my_api_key..."
    source_type = "lemlist"
  }
  name         = "Erika Jaskolski Jr."
  secret_id    = "...my_secret_id..."
  workspace_id = "313b3e50-44f6-45fe-b2dc-4077d0cc3f40"
}