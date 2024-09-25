resource "airbyte_source_pendo" "my_source_pendo" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "e62d66e7-2778-4d5d-b92d-16e1dcb06fc1"
  name          = "Ms. Tyrone Murphy DVM"
  secret_id     = "...my_secret_id..."
  workspace_id  = "7c1d8bfd-db09-4b9a-903f-60eb4a54b7cf"
}