resource "airbyte_source_google_webfonts" "my_source_googlewebfonts" {
  configuration = {
    alt          = "...my_alt..."
    api_key      = "...my_api_key..."
    pretty_print = "...my_pretty_print..."
    sort         = "...my_sort..."
    source_type  = "google-webfonts"
  }
  name         = "Donald Hyatt"
  secret_id    = "...my_secret_id..."
  workspace_id = "81d6bb33-cfaa-4348-831b-f407ee4fcf0c"
}