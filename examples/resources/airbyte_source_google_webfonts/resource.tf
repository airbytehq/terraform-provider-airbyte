resource "airbyte_source_google_webfonts" "my_source_googlewebfonts" {
  configuration = {
    alt          = "...my_alt..."
    api_key      = "...my_api_key..."
    pretty_print = "...my_pretty_print..."
    sort         = "...my_sort..."
  }
  definition_id = "6cf9b79e-2328-488b-abde-25154a52da80"
  name          = "Todd Rodriguez"
  secret_id     = "...my_secret_id..."
  workspace_id  = "49853a69-5093-45ad-936c-5004734e30b4"
}