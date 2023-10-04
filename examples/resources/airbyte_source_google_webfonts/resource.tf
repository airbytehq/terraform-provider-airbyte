resource "airbyte_source_google_webfonts" "my_source_googlewebfonts" {
  configuration = {
    alt          = "...my_alt..."
    api_key      = "...my_api_key..."
    pretty_print = "...my_pretty_print..."
    sort         = "...my_sort..."
  }
  name         = "Ms. Eva Barton Sr."
  secret_id    = "...my_secret_id..."
  workspace_id = "82195430-f896-44a3-a1f4-31fb3aad078a"
}