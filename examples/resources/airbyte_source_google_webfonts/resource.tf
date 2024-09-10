resource "airbyte_source_google_webfonts" "my_source_googlewebfonts" {
  configuration = {
    alt          = "...my_alt..."
    api_key      = "...my_api_key..."
    pretty_print = "...my_pretty_print..."
    sort         = "...my_sort..."
  }
  definition_id = "391630fd-2f13-41d4-bbef-253f33ac135d"
  name          = "Jackie Bayer"
  secret_id     = "...my_secret_id..."
  workspace_id  = "3794a97d-5acf-4562-93a6-6e5ad3919293"
}