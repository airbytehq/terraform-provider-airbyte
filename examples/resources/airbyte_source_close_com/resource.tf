resource "airbyte_source_close_com" "my_source_closecom" {
  configuration = {
    api_key    = "...my_api_key..."
    start_date = "2021-01-01"
  }
  name         = "Luis Fahey"
  secret_id    = "...my_secret_id..."
  workspace_id = "e7edb401-c239-4e69-86f2-1d654173cccb"
}