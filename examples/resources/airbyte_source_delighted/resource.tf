resource "airbyte_source_delighted" "my_source_delighted" {
  configuration = {
    api_key = "...my_api_key..."
    since   = "2022-05-30T04:50:23Z"
  }
  definition_id = "19a9b67f-a853-4ae1-846b-10537ca52404"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "c8b7a745-6e54-4a64-b6b8-c11deac52738"
}