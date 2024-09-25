resource "airbyte_source_google_webfonts" "my_source_googlewebfonts" {
  configuration = {
    alt          = "...my_alt..."
    api_key      = "...my_api_key..."
    pretty_print = "...my_pretty_print..."
    sort         = "...my_sort..."
  }
  definition_id = "3ae1f1c3-7b35-40eb-b398-1c89f963f1e6"
  name          = "Tara Goldner"
  secret_id     = "...my_secret_id..."
  workspace_id  = "8788ff77-a589-433f-b738-d63dc7b7f8b1"
}