resource "airbyte_source_google_webfonts" "my_source_googlewebfonts" {
  configuration = {
    additional_properties = "{ \"see\": \"documentation\" }"
    alt                   = "...my_alt..."
    api_key               = "...my_api_key..."
    pretty_print          = "...my_pretty_print..."
    sort                  = "...my_sort..."
  }
  definition_id = "a68fbcde-b465-4ab3-b2a6-b0590a875835"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "de7d79c8-bd9b-41bc-bbab-b419bed9d264"
}