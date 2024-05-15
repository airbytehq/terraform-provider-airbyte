resource "airbyte_source_google_webfonts" "my_source_googlewebfonts" {
  configuration = {
    alt          = "...my_alt..."
    api_key      = "...my_api_key..."
    pretty_print = "...my_pretty_print..."
    sort         = "...my_sort..."
  }
  definition_id = "d6b468c8-5ec2-41a9-ab56-7f13c77e51fa"
  name          = "Bessie Ebert"
  secret_id     = "...my_secret_id..."
  workspace_id  = "f1a4306e-0829-409d-97bf-abbad3671a9c"
}