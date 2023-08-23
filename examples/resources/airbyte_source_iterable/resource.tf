resource "airbyte_source_iterable" "my_source_iterable" {
  configuration = {
    api_key     = "...my_api_key..."
    source_type = "iterable"
    start_date  = "2021-04-01T00:00:00Z"
  }
  name         = "Peggy Bergstrom"
  secret_id    = "...my_secret_id..."
  workspace_id = "bf5c838f-bb8c-420c-b67f-c4b425e99e62"
}