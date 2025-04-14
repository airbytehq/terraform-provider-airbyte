resource "airbyte_source_assemblyai" "my_source_assemblyai" {
  configuration = {
    api_key         = "...my_api_key..."
    request_id      = "...my_request_id..."
    start_date      = "2020-07-28T10:04:09.978Z"
    subtitle_format = "vtt"
  }
  definition_id = "732307c9-4f4b-4d1d-aea5-c3db2354367a"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "491f4b64-6df7-4f52-8438-d9ab2df2f613"
}