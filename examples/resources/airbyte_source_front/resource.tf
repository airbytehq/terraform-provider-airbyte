resource "airbyte_source_front" "my_source_front" {
  configuration = {
    api_key    = "...my_api_key..."
    page_limit = "...my_page_limit..."
    start_date = "2020-09-01T18:02:32.558Z"
  }
  definition_id = "c526af10-da40-41fb-8fc5-2730b39994a4"
  name          = "Kellie Grady"
  secret_id     = "...my_secret_id..."
  workspace_id  = "985c78fa-7d86-4bdf-9bf9-1acb12108372"
}