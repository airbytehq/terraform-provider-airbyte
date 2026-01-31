resource "airbyte_source_railz" "my_source_railz" {
  configuration = {
    client_id  = "...my_client_id..."
    secret_key = "...my_secret_key..."
    start_date = "...my_start_date..."
  }
  definition_id = "5ca01522-3f6e-4546-8798-96a612b566f5"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "e13b054a-bc61-4cd7-9484-e54f4ddcd9d0"
}