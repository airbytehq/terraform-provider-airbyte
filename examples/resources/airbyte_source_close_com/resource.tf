resource "airbyte_source_close_com" "my_source_closecom" {
  configuration = {
    api_key    = "...my_api_key..."
    start_date = "2021-01-01"
  }
  definition_id = "2feda523-5eaf-4703-83f9-92da3d6d90ab"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "65416224-7de7-412c-a755-9d5c38065592"
}