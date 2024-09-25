resource "airbyte_source_iterable" "my_source_iterable" {
  configuration = {
    api_key    = "...my_api_key..."
    start_date = "2021-04-01T00:00:00Z"
  }
  definition_id = "9387527d-5e3e-4f72-86d0-c0b7968b7242"
  name          = "Edna Kihn"
  secret_id     = "...my_secret_id..."
  workspace_id  = "2e9e26c4-c104-4f1d-be3b-1f2904477573"
}