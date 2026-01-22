resource "airbyte_source_opuswatch" "my_source_opuswatch" {
  configuration = {
    api_key    = "...my_api_key..."
    start_date = "...my_start_date..."
  }
  definition_id = "6487d0aa-6b42-46d6-b6af-a97df380566a"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "4d1bafb2-9d5f-4fcf-bdaa-ed1cdacbd419"
}