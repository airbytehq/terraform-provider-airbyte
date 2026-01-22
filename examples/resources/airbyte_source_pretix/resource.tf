resource "airbyte_source_pretix" "my_source_pretix" {
  configuration = {
    api_token = "...my_api_token..."
  }
  definition_id = "55f867e4-2fa7-4bab-8467-7b18a9e92d2d"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "64a87393-a176-4e51-ae02-c095deb8096a"
}