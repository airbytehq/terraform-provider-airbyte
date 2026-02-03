resource "airbyte_source_google_webfonts" "my_source_googlewebfonts" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    alt                   = "...my_alt..."
    api_key               = "...my_api_key..."
    pretty_print          = "...my_pretty_print..."
    sort                  = "...my_sort..."
  }
  definition_id = "3dd39ae5-449b-402e-8b34-95af9a841c8e"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "de7d79c8-bd9b-41bc-bbab-b419bed9d264"
}