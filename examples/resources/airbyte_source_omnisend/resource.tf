resource "airbyte_source_omnisend" "my_source_omnisend" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "ae07d2b5-9ab5-46ed-b57c-000ccdeed12b"
  name          = "Corey Walker"
  secret_id     = "...my_secret_id..."
  workspace_id  = "3d022a60-8737-4f9f-9cf1-7c9c1c918861"
}