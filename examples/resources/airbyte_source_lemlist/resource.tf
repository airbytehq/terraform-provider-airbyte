resource "airbyte_source_lemlist" "my_source_lemlist" {
  configuration = {
    api_key = "...my_api_key..."
  }
  name         = "Benjamin Stroman"
  secret_id    = "...my_secret_id..."
  workspace_id = "7506042c-1c65-4661-b248-5a060238eba1"
}