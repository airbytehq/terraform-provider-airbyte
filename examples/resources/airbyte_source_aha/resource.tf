resource "airbyte_source_aha" "my_source_aha" {
  configuration = {
    api_key     = "...my_api_key..."
    source_type = "aha"
    url         = "...my_url..."
  }
  name         = "Brandy Gibson"
  secret_id    = "...my_secret_id..."
  workspace_id = "3a8418d1-6230-49fb-8929-921aefb9f58c"
}