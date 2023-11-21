resource "airbyte_source_iterable" "my_source_iterable" {
  configuration = {
    api_key    = "...my_api_key..."
    start_date = "2021-04-01T00:00:00Z"
  }
  definition_id = "00977793-827c-406d-986b-4fbde6ae5395"
  name          = "Katherine Bashirian"
  secret_id     = "...my_secret_id..."
  workspace_id  = "d8df8fdd-acae-4826-9af8-b9bb4850d654"
}