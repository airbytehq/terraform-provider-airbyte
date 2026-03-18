resource "airbyte_source_railz" "my_source_railz" {
  configuration = {
    client_id  = "...my_client_id..."
    secret_key = "...my_secret_key..."
    start_date = "...my_start_date..."
  }
  definition_id = "9b6cc0c0-da81-4103-bbfd-5279e18a849a"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "e13b054a-bc61-4cd7-9484-e54f4ddcd9d0"
}