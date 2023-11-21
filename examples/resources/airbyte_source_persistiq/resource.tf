resource "airbyte_source_persistiq" "my_source_persistiq" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "bbc35ba8-92b6-4d58-85ab-7b9331a5ddaf"
  name          = "Taylor Keeling"
  secret_id     = "...my_secret_id..."
  workspace_id  = "5ec8caac-d8d2-4abf-9c0f-33811ddad7d7"
}