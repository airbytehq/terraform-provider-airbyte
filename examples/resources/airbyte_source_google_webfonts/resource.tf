resource "airbyte_source_google_webfonts" "my_source_googlewebfonts" {
  configuration = {
    alt          = "...my_alt..."
    api_key      = "...my_api_key..."
    pretty_print = "...my_pretty_print..."
    sort         = "...my_sort..."
  }
  definition_id = "ce1bb1ca-daa0-4e32-8a3b-d5563e04de28"
  name          = "Whitney Kilback"
  secret_id     = "...my_secret_id..."
  workspace_id  = "65fdff2d-eb8c-4bf2-a74a-92033b17bfcc"
}