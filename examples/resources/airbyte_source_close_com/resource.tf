resource "airbyte_source_close_com" "my_source_closecom" {
  configuration = {
    api_key     = "...my_api_key..."
    source_type = "close-com"
    start_date  = "2021-01-01"
  }
  name         = "Ronnie Nikolaus"
  secret_id    = "...my_secret_id..."
  workspace_id = "e0ac184c-2b9c-4247-8883-73a40e1942f3"
}