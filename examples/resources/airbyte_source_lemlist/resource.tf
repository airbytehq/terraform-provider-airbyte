resource "airbyte_source_lemlist" "my_source_lemlist" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "0227d625-c315-45f7-b1c6-e6bc1caf166a"
  name          = "Bert Kohler"
  secret_id     = "...my_secret_id..."
  workspace_id  = "25477f38-7c53-4022-ba4a-ed2995c663b6"
}