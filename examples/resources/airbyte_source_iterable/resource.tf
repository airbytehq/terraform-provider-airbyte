resource "airbyte_source_iterable" "my_source_iterable" {
  configuration = {
    api_key    = "...my_api_key..."
    start_date = "2021-04-01T00:00:00Z"
  }
  definition_id = "88ff77a5-8933-4f77-b8d6-3dc7b7f8b16c"
  name          = "Janet Hodkiewicz"
  secret_id     = "...my_secret_id..."
  workspace_id  = "1e8f0042-f922-410b-9c8f-204e6a775647"
}