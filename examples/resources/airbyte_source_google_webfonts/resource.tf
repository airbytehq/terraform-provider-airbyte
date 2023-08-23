resource "airbyte_source_google_webfonts" "my_source_googlewebfonts" {
  configuration = {
    alt          = "...my_alt..."
    api_key      = "...my_api_key..."
    pretty_print = "...my_pretty_print..."
    sort         = "...my_sort..."
    source_type  = "google-webfonts"
  }
  name         = "Garrett Hoeger"
  secret_id    = "...my_secret_id..."
  workspace_id = "af90a26c-7cdc-4981-b068-981d6bb33cfa"
}