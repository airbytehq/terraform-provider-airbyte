resource "airbyte_source_lemlist" "my_source_lemlist" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "e08d80f6-94c4-48e9-90f8-4ccbad71dab0"
  name          = "Mrs. Vickie Barrows"
  secret_id     = "...my_secret_id..."
  workspace_id  = "124b6e7b-2083-4a37-b0c9-92762a38aa73"
}