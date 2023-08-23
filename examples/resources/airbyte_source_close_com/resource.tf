resource "airbyte_source_close_com" "my_source_closecom" {
  configuration = {
    api_key     = "...my_api_key..."
    source_type = "close-com"
    start_date  = "2021-01-01"
  }
  name         = "Robert Muller MD"
  secret_id    = "...my_secret_id..."
  workspace_id = "668151a4-72af-4923-8594-9f83f350cf87"
}