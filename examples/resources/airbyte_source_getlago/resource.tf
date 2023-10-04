resource "airbyte_source_getlago" "my_source_getlago" {
  configuration = {
    api_key = "...my_api_key..."
  }
  name         = "Kelvin Bahringer"
  secret_id    = "...my_secret_id..."
  workspace_id = "f07c5466-21bd-4ba9-8354-f51ed0a8181e"
}