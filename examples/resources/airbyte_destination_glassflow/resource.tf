resource "airbyte_destination_glassflow" "my_destination_glassflow" {
  configuration = {
    pipeline_access_token = "...my_pipeline_access_token..."
    pipeline_id           = "...my_pipeline_id..."
  }
  definition_id = "c97a5a30-f69a-40ad-9b7c-b4dba950f2c3"
  name          = "...my_name..."
  workspace_id  = "c5cac132-b023-4ea0-95ad-7ade60ad7577"
}