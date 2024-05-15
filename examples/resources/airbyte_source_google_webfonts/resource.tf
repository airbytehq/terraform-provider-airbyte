resource "airbyte_source_google_webfonts" "my_source_googlewebfonts" {
  configuration = {
    alt          = "...my_alt..."
    api_key      = "...my_api_key..."
    pretty_print = "...my_pretty_print..."
    sort         = "...my_sort..."
  }
  definition_id = "89bfb0cb-9d8d-4fc2-ba8c-72c3eb5dc557"
  name          = "Charlotte Shields IV"
  secret_id     = "...my_secret_id..."
  workspace_id  = "d7698733-386b-453a-879a-0805ff1793bf"
}