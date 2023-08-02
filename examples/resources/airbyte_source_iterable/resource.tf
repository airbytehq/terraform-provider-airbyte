resource "airbyte_source_iterable" "my_source_iterable" {
  configuration = {
    api_key     = "...my_api_key..."
    source_type = "iterable"
    start_date  = "2021-04-01T00:00:00Z"
  }
  name         = "Emanuel McKenzie"
  secret_id    = "...my_secretId..."
  workspace_id = "ad185fe4-31d6-4bf5-8838-fbb8c20cb67f"
}