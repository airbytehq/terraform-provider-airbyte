resource "airbyte_source_railz" "my_source_railz" {
  configuration = {
    client_id  = "...my_client_id..."
    secret_key = "...my_secret_key..."
    start_date = "...my_start_date..."
  }
  definition_id = "c7e9c462-09ea-452c-b07c-b05c4a8d21cf"
  name          = "Ellen Hudson"
  secret_id     = "...my_secret_id..."
  workspace_id  = "e520f854-a567-4309-8c0e-e4bba7faed57"
}