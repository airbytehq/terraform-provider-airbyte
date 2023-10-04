resource "airbyte_source_railz" "my_source_railz" {
  configuration = {
    client_id  = "...my_client_id..."
    secret_key = "...my_secret_key..."
    start_date = "...my_start_date..."
  }
  name         = "Mr. Steven Hills Sr."
  secret_id    = "...my_secret_id..."
  workspace_id = "5d2de4b8-db33-4d2b-ba27-b0b342a10fbc"
}