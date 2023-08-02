resource "airbyte_source_google_webfonts" "my_source_googlewebfonts" {
  configuration = {
    alt          = "...my_alt..."
    api_key      = "...my_api_key..."
    pretty_print = "...my_prettyPrint..."
    sort         = "...my_sort..."
    source_type  = "google-webfonts"
  }
  name         = "Jean Mayert"
  secret_id    = "...my_secretId..."
  workspace_id = "b55410ad-c669-4af9-8a26-c7cdc981f068"
}