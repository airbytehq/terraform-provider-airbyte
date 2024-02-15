resource "airbyte_source_aircall" "my_source_aircall" {
  configuration = {
    api_id     = "...my_api_id..."
    api_token  = "...my_api_token..."
    start_date = "2022-03-01T00:00:00.000Z"
  }
  definition_id = "d627d201-b0d0-469b-b26e-6b9f25aa9f8c"
  name          = "Mr. Cristina Friesen"
  secret_id     = "...my_secret_id..."
  workspace_id  = "048d9ffe-8959-4afe-af69-ead1e5d3690e"
}