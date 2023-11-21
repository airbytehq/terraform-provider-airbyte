resource "airbyte_source_google_webfonts" "my_source_googlewebfonts" {
  configuration = {
    alt          = "...my_alt..."
    api_key      = "...my_api_key..."
    pretty_print = "...my_pretty_print..."
    sort         = "...my_sort..."
  }
  definition_id = "77e51fa7-73fc-4f1a-8306-e082909d97bf"
  name          = "Kerry Reinger"
  secret_id     = "...my_secret_id..."
  workspace_id  = "3671a9ca-1d9c-4174-bee4-145562d27576"
}